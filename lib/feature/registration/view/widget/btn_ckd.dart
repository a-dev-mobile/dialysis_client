// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtnCkd extends StatelessWidget {
  const BtnCkd({
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
                textList: const ['1', '2', '3a', '3b', '4', '5'],
                isSelected: booles.sublist(0, booles.length - 1),
                onPressed: cubit.checkCkd,
                title: 'Укажите стадию ХБП',
                dialogText:
                    'Установив данное приложение. Вы скорее уже знаете свою стадию ХБП, если нет - выберите последнее значение и введите свой креатинин',
              ),
              BtnToggleText(
                textList: const ['Я не знаю'],
                isSelected: booles.sublist(booles.length - 1, booles.length),
                // ignore: prefer-extracting-callbacks
                onPressed: (v) {
                  cubit.checkCkd(v + booles.length - 1);
                },
                errorText: valid.isPure
                    ? null
                    // ignore: avoid-nested-conditional-expressions
                    : valid.error == valid.notSelected
                        ? 'Стадия ХБП не выбрана'
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
