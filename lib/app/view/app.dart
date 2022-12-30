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
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
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
          lazy: false,
          create: (context) => RemoteConfigCubit()..load(),
        ),
      ],
      child: const _MobileApp(),
    );
  }
}

class _MobileApp extends StatelessWidget {
  const _MobileApp();

  @override
  Widget build(BuildContext context) {
    final go = context.read<AppRouter>();
    final cubitDebugWatch = context.watch<DebugCubit>();
    final cubitLocaleWatch = context.watch<LocaleCubit>();

    debugRepaintRainbowEnabled = cubitDebugWatch.state.isShowRepaintRainbow;
   
    debugPaintSizeEnabled = cubitDebugWatch.state.isShowPaintSizeEnabled;

    //  global
    Intl.defaultLocale = cubitLocaleWatch.state.name;
  
    return BetterFeedback(
      child: DevicePreview(
        enabled: cubitDebugWatch.state.isShowDevice,
        builder: (context) => ScreenUtilInit(
          designSize: const Size(320, 568),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp.router(
              onGenerateTitle: (context) =>
                  AppLocalizations.of(context).app_name,
              themeMode: context.watch<ThemeCubit>().state,
              theme: AppTheme.lightThemeData(),
              darkTheme: AppTheme.darkThemeData(),
              title: 'Product',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              locale: Locale(cubitLocaleWatch.state.name),
              routerDelegate: go.router.routerDelegate,
              routeInformationParser: go.router.routeInformationParser,
              routeInformationProvider: go.router.routeInformationProvider,
              builder: (context, _) {
                var child = _!;
                final theme = Theme.of(context);
                final isThemeDark = theme.brightness == Brightness.dark;
                child = Toast(
                  navigatorKey: go.router.routerDelegate.navigatorKey,
                  child: child,
                );

                // toast snackbar dialog
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
            );
          },
        ),
      ),
    );
  }
}
