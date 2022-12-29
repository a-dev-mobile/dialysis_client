// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/app/style/extensions/extensions.dart';
import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/cubit/cubit.dart';
import 'package:dialysis/feature/registration/validation/validation.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderChoose extends StatelessWidget {
  const GenderChoose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return BlocBuilder<RegistrationCubit, RegistrationState>(
      buildWhen: (p, c) =>
          p.validGenderFormz.isPure != c.validGenderFormz.isPure ||
          p.validGenderFormz.value != c.validGenderFormz.value,
      builder: (context, state) {
        final valid = state.validGenderFormz;

        return Stack(
          children: [
            BtnToggleText(
              textList: [l.female, l.male],
              isSelected: state.genderSelected,
              onPressed: cubit.checkGender,
              errorText: valid.isPure
                  ? null
                  : valid.error == valid.notSelected
                      ? l.gender_not_selected
                      : null,
              title:
                  'Для человека какого пола следует рассчитывать рекомендации?',
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                transform: Matrix4.translationValues(0, -16, 0),
                child: IconButton(
                    onPressed: () {
                      _showMyDialog(context);
                    },
                    icon: Icon(
                      Icons.info_outline,
                      color: context.theme.colorScheme.primary,
                    )),
              ),
            )
          ],
        );
      },
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    
    builder: (BuildContext context) {
      return const AlertDialog(
        icon: Icon(Icons.info_outline),
        content: Text(
            'Пол влияет на скорость метаболизма. Вот почему эта информация нужна для расчета суточной нормы.'),
      
      );
    },
  );
}
