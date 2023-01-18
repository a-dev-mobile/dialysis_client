// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dialysis/core/storage/storage.dart';
import 'package:dialysis/core/widget/widget.dart';

import 'package:dialysis/feature/common/test_app/test_app.dart';
import 'package:dialysis/feature/dashboard/dashboard.dart';
import 'package:dialysis/feature/debug_menu/debug_menu.dart';

import 'package:dialysis/feature/onboarding/vew/vew.dart';
import 'package:dialysis/feature/overlay_widget/overlay_widget.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/feature/setting/setting_tab.dart';
import 'package:dialysis/feature/splash/splash.dart';
import 'package:dialysis/feature/welcome/view/welcome_p.dart';
import 'package:dialysis/global.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter({required AppStorage storage}) : _storage = storage;

  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _pageNavigatorKey = GlobalKey<NavigatorState>();

  final AppStorage _storage;

  final GoRouter router = GoRouter(
    errorPageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: Center(child: Text(state.error.toString())),
    ),
    // initialLocation: SplashPage.path,
    initialLocation: DashBoardPage.path,
    observers: <NavigatorObserver>[
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    // ignore: avoid_redundant_argument_values
    debugLogDiagnostics: DartDefine.IS_DEBUG,
    navigatorKey: _rootNavigatorKey,

    routes: [
      ShellRoute(
        builder: (_, GoRouterState state, child) {
          return OverlayWidget(goRouterState: state, child: child);
        },
        routes: [
          GoRoute(
            path: SplashPage.path,
            name: SplashPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const SplashPage(),
            ),
          ),
          GoRoute(
            path: WelcomePage.path,
            name: WelcomePage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const WelcomePage(),
            ),
          ),
          GoRoute(
            path: RegistrationPage.path,
            name: RegistrationPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const RegistrationPage(),
            ),
          ),
          GoRoute(
            path: DiaryPage.path,
            name: DiaryPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const DiaryPage(),
            ),
          ),
          GoRoute(
            path: DashBoardPage.path,
            name: DashBoardPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const DashBoardPage(),
            ),
          ),
          GoRoute(
            path: SettingPage.path,
            name: SettingPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const SettingPage(),
            ),
          ),
          GoRoute(
            path: DebugMenuPage.path,
            name: DebugMenuPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const DebugMenuPage(),
            ),
          ),
          GoRoute(
            path: OnBoardingPage.path,
            name: OnBoardingPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const OnBoardingPage(),
            ),
          ),
          GoRoute(
            path: TestAppPage.path,
            name: TestAppPage.name,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const TestAppPage(),
            ),
          ),
          GoRoute(
            path: PdfPage.path,
            name: PdfPage.name,
            pageBuilder: (context, state) {
              final url = state.extra ?? 'https://www.orimi.com/pdf-test.pdf';

              return MaterialPage<void>(
                key: state.pageKey,
                child: PdfPage(url: url.toString()),
              );
            },
          ),
        ],
        navigatorKey: _pageNavigatorKey,
      ),
    ],
  );

  Future<void> selectedRouter() async {
    final isFirstTime = await _storage.isFirstStart();

    final isOnboardingCompleted = await _storage.isOnboardingCompleted();

    if (isFirstTime || !isOnboardingCompleted) {
      final _ = await _storage.completeFirstStart();
      router.goNamed(
        OnBoardingPage.name,
      );

      return;

      // if you can't find anything

    } else {
      // router.goNamed(BottomNavBarPage.name);
    }
  }

  Future<void> exitApp() async {
    await _storage.clearAll();
    await _storage.completeOnboarding();
    await _storage.completeFirstStart();

    router.goNamed(SplashPage.name);
  }
}
