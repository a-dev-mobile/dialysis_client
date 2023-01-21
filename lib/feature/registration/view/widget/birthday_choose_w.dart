import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthdayChoose extends StatelessWidget {
  const BirthdayChoose({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.daySelected != c.daySelected ||
            p.monthSelected != c.monthSelected ||
            p.yearSelected != c.yearSelected ||
            p.validBirthdayFormz.isPure != c.validBirthdayFormz.isPure ||
            p.validBirthdayFormz.value != c.validBirthdayFormz.value,
        builder: (context, state) {
          final valid = state.validBirthdayFormz;

          return Column(
            children: [
              const TitleSub(text: 'Укажите дату своего рождения'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppDropDown(
                    hint: 'ДЕНЬ',
                    value: state.daySelected,
                    onChanged: cubit.changeDay,
                    values: state.dateRegModel.days,
                  ),
                  _DropDownMonth(
                    hint: 'MЕСЯЦ',
                    onChanged: cubit.changeMonth,
                    value: state.monthSelected,
                    values: state.dateRegModel.months,
                  ),
                  AppDropDown(
                    hint: 'ГОД',
                    onChanged: cubit.changeYear,
                    value: state.yearSelected,
                    values: state.dateRegModel.years,
                  ),
                ],
              ),
              if (valid.error == valid.isNoValid && !valid.isPure)
                const ErrorMsg(error: 'Дата рождения указана некорректно.'),
              if (valid.error == valid.isEmpty && !valid.isPure)
                const ErrorMsg(error: 'Дата рождения не выбрана'),
            ],
          );
        },
      ),
    );
  }
}

class _DropDownMonth extends StatelessWidget {
  const _DropDownMonth({
    required this.values,
    required this.hint,
    required this.onChanged,
    this.value,
  });
  final List<String> values;
  final String hint;
  final String? value;
  final void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return DropdownButton<String>(
      hint: Text(hint),
      value: value,
      items: [
        for (var v in values)
          DropdownMenuItem(
            value: v,
            child: Text(getMonthName(l: l, monthNumber: v)),
          )
      ],
      onChanged: onChanged,
    );
  }

  String getMonthName({
    required String monthNumber,
    required AppLocalizations l,
  }) {
    final mapMonth = {
      '01': l.month_january,
      '02': l.month_february,
      '03': l.month_march,
      '04': l.month_april,
      '05': l.month_may,
      '06': l.month_june,
      '07': l.month_july,
      '08': l.month_august,
      '09': l.month_september,
      '10': l.month_october,
      '11': l.month_november,
      '12': l.month_december,
    };
    return mapMonth[monthNumber] ?? '';
  }
}
