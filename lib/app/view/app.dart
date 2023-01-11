import 'package:device_preview/device_preview.dart';
import 'package:dialysis/app/common_cubits/common_c.dart';
import 'package:dialysis/app/style/style.dart';
import 'package:dialysis/l10n/app_localizations.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:feedback/feedback.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(
          create: (context) => LocaleCubit(storage: context.read())..load(),
        ),
        BlocProvider(create: (context) => InternetCubit()),
        BlocProvider(create: (context) => DebugCubit()),
        BlocProvider(
          create: (context) => RemoteConfigCubit()..load(),
          lazy: false,
        ),
      ],
      child: const _MobileApp(),
    );
  }
}

class _MobileApp extends StatelessWidget {
  const _MobileApp();
  void initStatusBar({required ThemeMode themeMode}) {
    Brightness? statusBarIconBrightness;

    statusBarIconBrightness =
        themeMode == ThemeMode.light ? Brightness.dark : Brightness.light;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: statusBarIconBrightness,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final go = context.read<AppRouter>();
    final cubitDebugWatch = context.watch<DebugCubit>();
    final cubitLocaleWatch = context.watch<LocaleCubit>();
    final cubitTheme = context.watch<ThemeCubit>();
    debugRepaintRainbowEnabled = cubitDebugWatch.state.isShowRepaintRainbow;

    debugPaintSizeEnabled = cubitDebugWatch.state.isShowPaintSizeEnabled;

    //  global
    Intl.defaultLocale = cubitLocaleWatch.state.name;
    initStatusBar(themeMode: cubitTheme.state);

    return BetterFeedback(
      child: DevicePreview(
        builder: (context) => ScreenUtilInit(
          builder: (BuildContext context, Widget? child) {
            return MaterialApp.router(
              routeInformationProvider: go.router.routeInformationProvider,
              routeInformationParser: go.router.routeInformationParser,
              routerDelegate: go.router.routerDelegate,
              // routerConfig: go.router,
              builder: (context, widget) {
                var child = widget ?? const SizedBox.shrink();
                final theme = Theme.of(context);
                final isThemeDark = theme.brightness == Brightness.dark;
                child = Toast(
                  navigatorKey: go.router.routerDelegate.navigatorKey,
                  child: child,
                );

                return FlashTheme(
                  flashBarTheme: isThemeDark
                      ? const FlashBarThemeData.dark()
                      : const FlashBarThemeData.light(),
                  flashDialogTheme: const FlashDialogThemeData(),
                  child: Builder(
                    builder: (context) =>
                        DevicePreview.appBuilder(context, child),
                  ),
                );
              },
              onGenerateTitle: (context) =>
                  AppLocalizations.of(context).app_name,
              theme: AppTheme.lightThemeData(),
              darkTheme: AppTheme.darkThemeData(),
              themeMode: cubitTheme.state,
              locale: Locale(cubitLocaleWatch.state.name),
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              debugShowCheckedModeBanner: false,
            );
          },
          designSize: const Size(320, 568),
          splitScreenMode: true,
          minTextAdapt: true,
        ),
        enabled: cubitDebugWatch.state.isShowDevice,
      ),
    );
  }
}
