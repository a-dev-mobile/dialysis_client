// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtnDiabetes extends StatelessWidget {
  const BtnDiabetes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validDiabetes.isPure != c.validDiabetes.isPure ||
            p.validDiabetes.value != c.validDiabetes.value,
        builder: (context, state) {
          final valid = state.validDiabetes;

          return BtnToggleText(
            textList: [l.yes_caps, l.no_caps],
            isSelected: state.diabetesSelected,
            onPressed: cubit.checkDiabetes,
            dialogText: l.info_diabets,
            errorText: valid.isPure
                ? null
                : valid.error == valid.notSelected
                    ? 'Подтвердите отсутствие или наличие диабета'
                    : null,
            title: 'Наличие диабета',
          );
        },
      ),
    );
  }
}
