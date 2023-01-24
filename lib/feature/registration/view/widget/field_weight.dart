// ignore_for_file: lines_longer_than_80_chars

import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//  ignore_for_file: avoid-nested-conditional-expressions
class FieldWeight extends StatefulWidget {
  const FieldWeight({
    super.key,
    required this.cubit,
  });

  final RegistrationCubit cubit;

  @override
  State<FieldWeight> createState() => _FieldWeightState();
}

class _FieldWeightState extends State<FieldWeight> {
  late final TextEditingController controller;

  @override
  void initState() {
    var initValue = '';
    final initDouble = widget.cubit.state.validWeight.value;
    if (initDouble != null) {
      initValue = initDouble.toString();
    }
    controller = TextEditingController(text: initValue);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          final valid = state.validWeight;

          return Column(
            children: [
              const TitleSub(text: 'Укажите свой текущий вес'),
              const SizedBox(height: 10),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: 'Вес',
                  errorText: valid.isPure
                      ? null
                      : valid.error == valid.isEmpty
                          ? 'Вес не указан'
                          : valid.error == valid.isMax
                              ? 'Указанный вес не поддерживается приложением'
                              : valid.error == valid.isMin
                                  ? 'Указанный вес не поддерживается приложением'
                                  : valid.error == valid.isNoValid
                                      ? 'Неправильное значение'
                                      : null,
                  errorMaxLines: 2,
                  suffixText: 'кг',
                ),
                keyboardType: TextInputType.number,
                onChanged: widget.cubit.checkWeight,
                inputFormatters: [LengthLimitingTextInputFormatter(6)],
              ),
            ],
          );
        },
        buildWhen: (p, c) =>
            p.validWeight.isPure != c.validWeight.isPure ||
            p.validWeight.value != c.validWeight.value,
      ),
    );
  }
}
