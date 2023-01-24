// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetDailyDiuresis extends StatelessWidget {
  const WidgetDailyDiuresis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          final booles = state.ckdSelected;
          final valid = state.validCkd;

          return Column(
            children: [
              BtnToggleText(
                /*  no, low, normal, notKnow, none */
                textList: const [
                  'Отсутствует',
                  'Снижен',
                  'Нормальный',
                ],
                isSelected: state.dailyDiuresisSelected,
                onPressed: cubit.checkDailyDiuresis,
                title: 'Укажите уровень суточного диуреза',
                dialogText:
                    'Суточный диурез – количество выделенной мочи за сутки (сумма показателей дневного и ночного диуреза), в норме составляет 1000-2000 мл для мужчин, 1000–1600 мл для женщин',
                errorText: valid.isPure
                    ? null
                
                    : valid.error == valid.notSelected
                        ? 'Не указан уровень суточного диуреза'
                        : null,
              ),
            ],
          );
        },
        buildWhen: (p, c) =>
            p.validCkd.isPure != c.validCkd.isPure ||
            p.validCkd.value != c.validCkd.value,
      ),
    );
  }
}
