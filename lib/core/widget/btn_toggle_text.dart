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
  });
  final List<String> textList;
  final String title;
  final String? errorText;
  final String? infoBottom;
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
              textAlign: TextAlign.center,
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
