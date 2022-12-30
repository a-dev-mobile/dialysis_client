import 'package:dialysis/app/style/style.dart';


import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  static const path = '/registration';
  static const name = 'registration';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegistrationCubit(
            router: context.read<AppRouter>(),
            clienTips: context.read(),
            storage: context.read(),
            db: context.read(),
          )..load(),
        ),
      ],
      child: const _RegistrationPage(),
    );
  }
}

class _RegistrationPage extends StatelessWidget {
  const _RegistrationPage();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    // final l = context.l10n;
    return ClearFocus(
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<RegistrationCubit, RegistrationState>(
            buildWhen: (p, c) =>
                p.isLoadPage != c.isLoadPage ||
                p.isLoadNextPage != c.isLoadNextPage,
            builder: (context, state) {
              if (state.isLoadPage) return const PageStartLoad();

              return LoadNextPage(
                isLoad: state.isLoadNextPage,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const _TitleMain(),
                        const SizedBox(height: 20),
                        const _TitleSub(text: 'Введите имя'),
                        const SizedBox(height: 10),
                        NameField(cubit: cubit),
                        const SizedBox(height: 20),
                        const GenderChoose(),
                        const SizedBox(height: 20),
                        const ActivityChoose(),
                        const SizedBox(height: 20),
                        const _TitleSub(text: 'Укажите дату своего рождения'),
                        BlocBuilder<RegistrationCubit, RegistrationState>(
                          buildWhen: (p, c) =>
                              p.daySelected != c.daySelected ||
                              p.monthSelected != c.monthSelected ||
                              p.yearSelected != c.yearSelected,
                          builder: (context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _DateDropDown(
                                  hint: 'ДЕНЬ',
                                  value: state.daySelected,
                                  onChanged: cubit.changeDay,
                                  values: state.dateRegModel.days,
                                ),
                                _DateDropDown(
                                  hint: 'MЕСЯЦ',
                                  onChanged: cubit.changeMonth,
                                  value: state.monthSelected,
                                  values: state.dateRegModel.months,
                                ),
                                _DateDropDown(
                                  hint: 'ГОД',
                                  onChanged: cubit.changeYear,
                                  value: state.yearSelected,
                                  values: state.dateRegModel.years,
                                ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: cubit.checkAll,
                            child: const Text('Начать'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _DateDropDown extends StatelessWidget {
  const _DateDropDown({
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
    // проверка на ошибку 
    var isError = false;
    if (value != null) {
      isError = !values.contains(value);
    }

    return DropdownButton<String>(
      hint: Text(hint),
      value: isError ? null : value,
      items: [
        for (final v in values)
          DropdownMenuItem(
            value: v,
            child: Text(v),
          )
      ],
      onChanged: onChanged,
    );
  }
}

class _TitleSub extends StatelessWidget {
  const _TitleSub({
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.bodyText2(),
      textAlign: TextAlign.center,
    );
  }
}

class _TitleMain extends StatelessWidget {
  const _TitleMain();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Здраствуйте!\nРасскажите о себе',
      style: AppTextStyles.h4(),
      textAlign: TextAlign.center,
    );
  }
}
