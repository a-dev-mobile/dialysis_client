import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/splash/splash.dart';
import 'package:dialysis/navigation/app_router.dart';
import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'Splash';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => SplashCubit(
        router: context.read<AppRouter>(),
      )..load(),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Align(
            child: AppLogo(),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: PageLoad(),
          ),
        ],
      ),
    );
  }
}
