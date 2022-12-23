import 'package:dialysis/app/style/style.dart';
import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  static const path = '/Registration';
  static const name = 'Registration';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegistrationCubit(
            router: context.read<AppRouter>(),
            cubitTheme: context.read(),
            cubitLocale: context.read(),
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'l.registration',
                style: AppTextStyles.h4(),
              ),
              Text(
                'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
                style: AppTextStyles.h6(),
              ),
              const Spacer(),
              BlocBuilder<RegistrationCubit, RegistrationState>(
                buildWhen: (p, c) => p.themeActive != c.themeActive,
                builder: (context, state) {
                  return _BtnToggleText(
                    onPressed: cubit.changeTheme,
                    textList: const ['Светлая', 'Темная'],
                    isSelected: state.boolsTheme,
                    title: 'Выберите тему приложения',
                  );
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<RegistrationCubit, RegistrationState>(
                buildWhen: (p, c) => p.localeActive != c.localeActive,
                builder: (context, state) {
                  return _BtnToggleText(
                    onPressed: cubit.changeLocale,
                    textList: const [
                      'Руский',
                      'Английский',
                    ],
                    isSelected: state.boolsLocale,
                    title: 'Выберите язык приложения',
                  );
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Начать')))
            ],
          ),
        ),
      ),
    );
  }
}

class _BtnToggleText extends StatelessWidget {
  const _BtnToggleText({
    required this.textList,
    required this.isSelected,
    required this.onPressed,
    required this.title,
  });
  final List<String> textList;
  final String title;
  final List<bool> isSelected;
  final void Function(int)? onPressed;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Column(
          children: [
            Text(
              title,
              style: AppTextStyles.button(),
            ),
            const SizedBox(height: 10),
            ToggleButtons(
              constraints: BoxConstraints.expand(
                width: (constraint.maxWidth / textList.length) - 3,
              ),
              isSelected: isSelected,
              onPressed: onPressed,
              children: [
                for (var i in textList) Text(i),
              ],
            ),
          ],
        );
      },
    );
  }
}
