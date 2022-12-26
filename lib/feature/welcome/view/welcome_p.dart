import 'package:appmetrica_plugin/appmetrica_plugin.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                l.welcome,
                style: AppTextStyles.h4(),
              ),
              Text(
                'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
                style: AppTextStyles.h6(),
              ),
              const Spacer(),
              AppLogo(),
              const Spacer(),
              BlocBuilder<WelcomeCubit, WelcomeState>(
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
              BlocBuilder<WelcomeCubit, WelcomeState>(
                buildWhen: (p, c) => p.localeActive != c.localeActive,
                builder: (context, state) {
                  return _BtnToggleText(
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
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {
                        AppMetrica.reportEvent('My first AppMetrica event!');
                        AppMetrica.reportError(
                          message: '5555Error message',
                          errorDescription:
                              AppMetricaErrorDescription.fromCurrentStackTrace(
                                  message: '111Error message', type: '444Error type'),
                        ).ignore();

                        AppMetrica.reportUnhandledException(
                          AppMetricaErrorDescription.fromCurrentStackTrace(
                              message: '222Error message', type: '333Error type'),
                        );

                        AppMetrica.reportAppOpen(
                            'https://appmetrica.yandex.com');
                            
                        AppMetrica.reportReferralUrl(
                            "https://appmetrica.yandex.com");
                        AppMetrica.setLocationTracking(true);

                        AppMetrica.sendEventsBuffer();

                        final deviceId =
                            await AppMetrica.requestAppMetricaDeviceID();
                        print("DeviceId $deviceId");

                        final version = await AppMetrica.libraryVersion;
                        print("Library version $version");
                      },
                      child: const Text('Начать')))
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
              style: AppTextStyles.bodyText2(),
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
