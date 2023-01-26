// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtnGender extends StatelessWidget {
  const BtnGender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validGender.isPure != c.validGender.isPure ||
            p.validGender.value != c.validGender.value,
        builder: (context, state) {
          final valid = state.validGender;

          return BtnToggleText(
            textList: [l.female, l.male],
            isSelected: state.genderSelected,
            onPressed: cubit.checkGender,
            dialogText:
                'Пол влияет на скорость метаболизма. Вот почему эта информация нужна для расчета суточной нормы.',
            errorText:valid.errorText(l: l),
            title:
                'Для человека какого пола следует рассчитывать рекомендации?',
          );
        },
      ),
    );
  }
}