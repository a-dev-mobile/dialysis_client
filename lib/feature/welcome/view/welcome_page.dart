// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/app/style/style.dart';
import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/welcome/welcome.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static const path = '/Welcome';
  static const name = 'Welcome';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeCubit(
            router: context.read<AppRouter>(),
            cubitTheme: context.read(),
            cubitLocale: context.read(),
          )..load(),
        ),
      ],
      child: const _WelcomePage(),
    );
  }
}

class _WelcomePage extends StatelessWidget {
  const _WelcomePage();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WelcomeCubit>();

    final l = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: ClearFocus(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  l.welcome,
                  style: AppTextStyles.h4(),
                ),
                Text(
                  'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
                  style: AppTextStyles.h6(),
                ),
                const Spacer(),
                const AppLogo(),
                const Spacer(),
                BlocBuilder<WelcomeCubit, WelcomeState>(
                  buildWhen: (p, c) => p.themeActive != c.themeActive,
                  builder: (context, state) {
                    return BtnToggleText(
                      onPressed: cubit.changeTheme,
                      textList: const ['Светлая', 'Темная'],
                      isSelected: state.boolsTheme,
                      title: 'Выберите тему приложения',
                    );
                  },
                ),
                const SizedBox(height: 20),
                BlocBuilder<WelcomeCubit, WelcomeState>(
                  buildWhen: (p, c) => p.localeActive != c.localeActive,
                  builder: (context, state) {
                    return BtnToggleText(
                      onPressed: cubit.changeLocale,
                      textList: const [
                        'Английский',
                        'Руский',
                      ],
                      isSelected: state.boolsLocale,
                      title: 'Выберите язык приложения',
                    );
                  },
                ),
                const SizedBox(height: 5),
                Text(
                  '(Вы можете изменить параметры в личном кабинете)',
                  style: AppTextStyles.caption(),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: cubit.nextPage,
                    child: const Text('Начать'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
