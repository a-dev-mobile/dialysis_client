import 'package:dialysis/app/style/extensions/extensions.dart';
import 'package:dialysis/app/style/theme/theme.dart';

import 'package:flutter/material.dart';

class BtnToggleText extends StatelessWidget {
  const BtnToggleText({
    super.key,
    required this.textList,
    required this.isSelected,
    required this.onPressed,
    required this.title,
    this.errorText,
    this.infoBottom,
    this.dialogText,
  });
  final List<String> textList;
  final String title;
  final String? errorText;
  final String? dialogText;
  final String? infoBottom;
  final List<bool> isSelected;
  final void Function(int)? onPressed;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: AppTextStyles.bodyText2(),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (dialogText != null)
                  Container(
                    // transform: Matrix4.translationValues(0, -16, 0),
                    child: IconButton(
                        onPressed: () => _showInfoDialog(
                            context: context, text: dialogText!),
                        icon: Icon(
                          Icons.info_outline,
                          color: context.theme.colorScheme.primary,
                        )),
                  )
              ],
            ),
            if (dialogText == null) const SizedBox(height: 10),
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
            const SizedBox(height: 6),
            if (errorText != null)
              Text(
                errorText!,
                style: context.textTheme.bodySmall!
                    .copyWith(color: context.theme.errorColor),
              ),
            const SizedBox(height: 6),
            if (infoBottom != null)
              Text(
                infoBottom!,
                textAlign: TextAlign.center,
                style: AppTextStyles.caption(),
              ),
          ],
        );
      },
    );
  }
}

Future<void> _showInfoDialog(
    {required BuildContext context, required String text}) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: Icon(Icons.info_outline),
        content: Text(text),
      );
    },
  );
}
