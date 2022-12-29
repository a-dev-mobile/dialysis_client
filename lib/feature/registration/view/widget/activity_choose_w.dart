// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/cubit/cubit.dart';
import 'package:dialysis/feature/registration/validation/validation.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActitvityChoose extends StatelessWidget {
  const ActitvityChoose({
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

        return BtnToggleText(
          infoBottom:
              'Пол влияет на скорость метаболизма. Вот почему эта информация нужна для расчета суточной нормы.',
          textList: [l.female, l.male],
          isSelected: state.genderSelected,
          onPressed: cubit.checkGender,
          errorText: valid.isPure
              ? null
              : valid.error == valid.notSelected
                  ? l.gender_not_selected
                  : null,
          title: 'Для человека какого пола следует рассчитывать рекомендации?',
        );
      },
    );
  }
}
