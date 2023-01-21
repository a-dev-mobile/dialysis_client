// ignore_for_file: lines_longer_than_80_chars,

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';

import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActivityChoose extends StatelessWidget {
  const ActivityChoose({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState2>(
        builder: (context, state) {
          final valid = state.validActivityFormz;

          return BtnToggleText(
            textList: [l.normal, l.light],
            isSelected: state.activitySelected,
            onPressed: cubit.checkActivity,
            title: 'Укажите свою физическую активность',
            errorText: valid.isPure
                ? null
                : valid.error == valid.notSelected
                    ? l.activity_not_selected
                    : null,
            dialogText:
                'Физическая активность влияет для расчета суточной нормы нутриентов.',
          );
        },
        buildWhen: (p, c) =>
            p.validActivityFormz.isPure != c.validActivityFormz.isPure ||
            p.validActivityFormz.value != c.validActivityFormz.value,
      ),
    );
  }
}
