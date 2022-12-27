import 'package:dialysis/app/style/theme/theme.dart';
import 'package:flutter/material.dart';

class BtnToggleText extends StatelessWidget {
  const BtnToggleText({
    super.key,
    required this.textList,
    required this.isSelected,
    required this.onPressed,
    required this.title,
  });
  final List<String> textList;
  final String title;
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
          ],
        );
      },
    );
  }
}
