// ignore_for_file: lines_longer_than_80_chars


import 'package:dialysis/core/widget/widget.dart';

import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HypertensionChoose extends StatelessWidget {
  const HypertensionChoose({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validHypertensionFormz.isPure != c.validHypertensionFormz.isPure ||
            p.validHypertensionFormz.value != c.validHypertensionFormz.value,
        builder: (context, state) {
          final valid = state.validHypertensionFormz;
    
          return BtnToggleText(
            textList: [l.yes_caps, l.no_caps],
            isSelected: state.hypertensionSelected,
            onPressed: cubit.checkHypertension,
            dialogText:l.info_hypertension,
            errorText: valid.isPure
                ? null
                : valid.error == valid.notSelected
                    ? 'Подтвердите отсутствие или наличие гипертензии'
                    : null,
            title: 'Наличие гипертензии (высокое кровяное давление)',
          );
        },
      ),
    );
  }
}
