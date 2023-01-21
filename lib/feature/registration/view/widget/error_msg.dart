import 'package:dialysis/app/style/style.dart';
import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
  const ErrorMsg({
    super.key,
    required this.error,
  });
  final String error;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 6),
        Text(
          error,
          style: context.textTheme.bodySmall!
              .copyWith(color: context.theme.errorColor),
        ),
      ],
    );
  }
}
