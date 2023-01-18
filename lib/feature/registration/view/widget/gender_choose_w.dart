// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderChoose extends StatelessWidget {
  const GenderChoose({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validGenderFormz.isPure != c.validGenderFormz.isPure ||
            p.validGenderFormz.value != c.validGenderFormz.value,
        builder: (context, state) {
          final valid = state.validGenderFormz;

          return BtnToggleText(
            textList: [l.female, l.male],
            isSelected: state.genderSelected,
            onPressed: cubit.checkGender,
            dialogText:
                'Пол влияет на скорость метаболизма. Вот почему эта информация нужна для расчета суточной нормы.',
            errorText: valid.isPure
                ? null
                : valid.error == valid.notSelected
                    ? l.gender_not_selected
                    : null,
            title:
                'Для человека какого пола следует рассчитывать рекомендации?',
          );
        },
      ),
    );
  }
}
