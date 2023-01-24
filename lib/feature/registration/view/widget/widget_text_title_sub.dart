import 'package:dialysis/app/style/style.dart';
import 'package:flutter/material.dart';

class TitleSub extends StatelessWidget {
  const TitleSub({
    super.key,
    required this.text,
    this.dialogText,
  });
  final String text;
  final String? dialogText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyles.bodyText2(),
          textAlign: TextAlign.center,
        ),
        if (dialogText != null)
          IconButton(
            onPressed: () => _showInfoDialog(
              context: context,
              text: dialogText!,
            ),
            icon: Icon(
              Icons.info_outline,
              color: context.theme.colorScheme.primary,
            ),
          ),
      ],
    );
  }

  Future<void> _showInfoDialog({
    required BuildContext context,
    required String text,
  }) async {
    return showDialog<void>(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
        );
      },
    );
  }
}
