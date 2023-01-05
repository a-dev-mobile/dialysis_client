// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';

import 'package:dialysis/feature/registration/registration.dart';

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

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validCkdFormz.isPure != c.validCkdFormz.isPure ||
            p.validCkdFormz.value != c.validCkdFormz.value,
        builder: (context, state) {
          final booles = state.ckdSelected;
          final valid = state.validCkdFormz;

          return Column(
            children: [
              BtnToggleText(
                dialogText:
                    'Установив данное приложение. Вы скорее уже знаете свою стадию ХБП, если нет - выберите последнее значение и введите свой креатинин',
                title: 'Укажите стадию ХБП',
                isSelected: booles.sublist(0, booles.length - 1),
                onPressed: cubit.checkCkd,
                textList: ['1', '2', '3a', '3b', '4', '5'],
              ),
              BtnToggleText(
                isSelected: booles.sublist(booles.length - 1, booles.length),
                onPressed: (v) {
                  cubit.checkCkd(v + booles.length - 1);
                },
                textList: ['Я не знаю'],
                errorText: valid.isPure
                    ? null
                    : valid.error == valid.notSelected
                        ? 'Стадия ХБП не выбрана'
                        : null,
              ),
            ],
          );
        },
      ),
    );
  }
}
