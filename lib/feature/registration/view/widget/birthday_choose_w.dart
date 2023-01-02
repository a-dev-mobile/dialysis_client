import 'package:dialysis/app/style/style.dart';
import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/registration.dart';
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
                  AppDropDown(
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
                _buildError(context, 'Дата рождения указана некорректно.'),
              if (valid.error == valid.isEmpty && !valid.isPure)
                _buildError(context, 'Дата рождения не выбрана'),
            ],
          );
        },
      ),
    );
  }

  Widget _buildError(BuildContext context, String error) {
    return Column(
      children: [
        const SizedBox(height: 6),
        Text(
          error,
          style: context.textTheme.bodySmall!
              .copyWith(color: context.theme.errorColor),
        ),
      ],
    );
  }
}
