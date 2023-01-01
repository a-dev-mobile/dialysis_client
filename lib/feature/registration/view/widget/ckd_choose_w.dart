// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/cubit/cubit.dart';
import 'package:dialysis/feature/registration/validation/validation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CkdChoose extends StatelessWidget {
  const CkdChoose({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;
    final cubit = context.read<RegistrationCubit>();

    return BlocBuilder<RegistrationCubit, RegistrationState>(
      buildWhen: (p, c) =>
          p.validCkdFormz.isPure != c.validCkdFormz.isPure ||
          p.validCkdFormz.value != c.validCkdFormz.value,
      builder: (context, state) {
        final valid = state.validCkdFormz;
        final booles = state.ckdSelected;
    
        return Column(
          children: [
            BtnToggleText(
              dialogText:
                  'Установив данное приложение. Вы скорее уже знаете свою стадию ХБП, если нет - выберите последнее значение и введите свой креатинин',
              title: 'Укажите стадию ХБП',
              isSelected: [booles[0], booles[1]],
              onPressed: (v) {
                cubit.checkCkd(v + 0);
              },
              textList: ['1', '2'],
            ),
            BtnToggleText(
              isSelected: [booles[2], booles[3]],
              onPressed: (v) {
                 cubit.checkCkd(v + 2);
              },
              textList: ['3', '4'],
            ),
            BtnToggleText(
              isSelected: [booles[4]],
              onPressed: (v) {
                cubit.checkCkd(v + 4);
              },
              textList: ['5 (до диализа)'],
            ),
            BtnToggleText(
              isSelected: [booles[5]],
              onPressed: (v) {
                  cubit.checkCkd(v + 5);
              },
              textList: ['5 (на диализе)'],
            ),
            BtnToggleText(
              isSelected: [booles[6]],
              onPressed: (v) {
                 cubit.checkCkd(v + 6);
              },
              textList: ['Я не знаю'],
            
            errorText: valid.isPure
              ? null
              : valid.error == valid.notSelected
                  ? 'Стадия ХБП не выбрана'
                  : null, ),
          ],
        );
      },
    );
  }
}
