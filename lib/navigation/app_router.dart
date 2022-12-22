// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dialysis/core/storage/app_storage.dart';
import 'package:dialysis/core/widget/widget.dart';

import 'package:dialysis/feature/category/view/category_p.dart';
import 'package:dialysis/feature/common/test_app/test_app.dart';
import 'package:dialysis/feature/debug_menu/debug_menu.dart';

import 'package:dialysis/feature/onboarding/vew/vew.dart';
import 'package:dialysis/feature/overlay_widget/overlay_widget.dart';
import 'package:dialysis/feature/setting/setting_tab.dart';
import 'package:dialysis/feature/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {

  static final _pageNavigatorKey = GlobalKey<NavigatorState>();

  final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    // initialLocation: SearchPage.path,
    initialLocation: SplashPage.path,
    routes: [
      ShellRoute(
        navigatorKey: _pageNavigatorKey,
        builder: (_, GoRouterState state, child) {
          return OverlayWidget(
            goRouterState: state,
            child: child,
          );
        },
        routes: [
          // GoRoute(
          //   name: BottomNavBarPage.name,
          //   path: BottomNavBarPage.path,
          //   pageBuilder: (context, state) => MaterialPage<void>(
          //     key: state.pageKey,
          //     child: const BottomNavBarPage(),
          //   ),
          // ),
          // GoRoute(
          //   name: SearchPage.name,
          //   path: SearchPage.path,
          //   pageBuilder: (context, state) => MaterialPage<void>(
          //     key: state.pageKey,
          //     child: const SearchPage(),
          //   ),
          // ),
          GoRoute(
            name: SettingPage.name,
            path: SettingPage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const SettingPage(),
            ),
          ),
          // GoRoute(
          //   name: FavoritePage.name,
          //   path: FavoritePage.path,
          //   pageBuilder: (context, state) => MaterialPage<void>(
          //     key: state.pageKey,
          //     child: const FavoritePage(),
          //   ),
          // ),
          GoRoute(
            name: DebugMenuPage.name,
            path: DebugMenuPage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const DebugMenuPage(),
            ),
          ),
          GoRoute(
            name: SplashPage.name,
            path: SplashPage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const SplashPage(),
            ),
          ),
          GoRoute(
            name: OnBoardingPage.name,
            path: OnBoardingPage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const OnBoardingPage(),
            ),
          ),
          GoRoute(
            name: TestAppPage.name,
            path: TestAppPage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const TestAppPage(),
            ),
          ),
          GoRoute(
            name: CategoryPage.name,
            path: CategoryPage.path,
            parentNavigatorKey: _pageNavigatorKey,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const CategoryPage(),
            ),
          ),
          GoRoute(
            name: PdfPage.name,
            path: PdfPage.path,
            parentNavigatorKey: _pageNavigatorKey,
            pageBuilder: (context, state) {
              final url = state.extra ?? 'https://www.orimi.com/pdf-test.pdf';

              return MaterialPage<void>(
                key: state.pageKey,
                child: PdfPage(
                  url: url.toString(),
                ),
              );
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: Center(
        child: Text(state.error.toString()),
      ),
    ),
  );

  // ignore: long-method
  Future<void> selectedRouter() async {
    final isFirstTime = await AppStorage.isFirstStart();

    final isOnboardingCompleted = await AppStorage.isOnboardingCompleted();

    if (isFirstTime || !isOnboardingCompleted) {
      final _ = await AppStorage.completeFirstStart();
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
    await AppStorage.clearAll();
    await AppStorage.completeOnboarding();
    await AppStorage.completeFirstStart();

    router.goNamed(SplashPage.name);
  }
}
