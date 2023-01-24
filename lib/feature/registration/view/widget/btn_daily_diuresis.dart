// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtnDailyDiuresis extends StatelessWidget {
  const BtnDailyDiuresis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
         buildWhen: (p, c) =>
            p.validDailyDiuresis.isPure != c.validDailyDiuresis.isPure ||
            p.validDailyDiuresis.value != c.validDailyDiuresis.value,
        builder: (context, state) {
          final valid = state.validDailyDiuresis;
          final boolValues = state.dailyDiuresisSelected;

          return Column(
            children: [
              BtnToggleText(
                textList: const [
                  'Отсутствует',
                  'Снижен',
                ],
                isSelected: [boolValues.first, boolValues[1]],
                onPressed: cubit.checkDailyDiuresis,
                title: 'Укажите уровень суточного диуреза',
                dialogText:
                    'Суточный диурез – количество выделенной мочи за сутки (сумма показателей дневного и ночного диуреза), в норме составляет 1000-2000 мл для мужчин, 1000–1600 мл для женщин',
              ),
              BtnToggleText(
                textList: const [
                  'Нормальный',
                  'Неизвестно',
                ],
                isSelected: [boolValues[2], boolValues[3]],
                // 2 because they are separated by two options 
                onPressed: (v) => cubit.checkDailyDiuresis(v + 2),
                errorText: valid.isPure
                    ? null
                    : valid.error == valid.notSelected
                        ? 'Не указан уровень суточного диуреза'
                        : null,
              ),
            ],
          );
        },
       
      ),
    );
  }
}
