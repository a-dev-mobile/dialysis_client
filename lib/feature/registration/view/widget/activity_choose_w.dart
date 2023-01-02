// ignore_for_file: lines_longer_than_80_chars


import 'package:dialysis/core/widget/widget.dart';

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
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validActivityFormz.isPure != c.validActivityFormz.isPure ||
            p.validActivityFormz.value != c.validActivityFormz.value,
        builder: (context, state) {
          final valid = state.validActivityFormz;
    
          return BtnToggleText(
            textList: [l.light, l.normal],
            isSelected: state.activitySelected,
            onPressed: cubit.checkActivity,
            dialogText:
                'Физическая активность влияет для расчета суточной нормы нутриентов.',
            errorText: valid.isPure
                ? null
                : valid.error == valid.notSelected
                    ? l.activity_not_selected
                    : null,
            title: 'Укажите свою физическую активность',
          );
        },
      ),
    );
  }
}
