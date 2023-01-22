import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppPartLoad extends StatelessWidget {
  const AppPartLoad({
    super.key,
    this.width = 50,
  });
  final double width;
  @override
  Widget build(BuildContext context) => Material(
        child: Center(
          child: Lottie.asset(width: width, 'assets/lottie/load_btn.json'),
        ),
      );
}
