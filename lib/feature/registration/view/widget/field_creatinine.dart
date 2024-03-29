// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FieldCreatinine extends StatefulWidget {
  const FieldCreatinine({
    super.key,
    required this.cubit,
  });

  final RegistrationCubit cubit;

  @override
  State<FieldCreatinine> createState() => _FieldCreatinineState();
}

class _FieldCreatinineState extends State<FieldCreatinine> {
  late final TextEditingController controller;

  @override
  void initState() {
    var initValue = '';
    final initDouble = widget.cubit.state.validCreatinine.value;
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

    return BlocBuilder<RegistrationCubit, RegistrationState>(
      buildWhen: (p, c) =>
          p.validCreatinine.isPure != c.validCreatinine.isPure ||
          p.validCreatinine.value != c.validCreatinine.value ||
          p.validCkd.value != c.validCkd.value ||
          p.isVisibleCreatinine != c.isVisibleCreatinine,
      builder: (context, state) {
        final valid = state.validCreatinine;

        const errorMaxLines2 = 2;
        const maxLength = 6;

        return Visibility(
          visible: state.isVisibleCreatinine,
          child: CardCustom(
            child: Column(
              children: [
                const TitleSub(
                  text: 'Укажите свой креатинин',
                  dialogText:
                      'Мы используем эти сведения для расчета клубочковой фильтрации',
                ),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    // labelText: 'Креатинин',
                    errorText: valid.isPure
                        ? null
                        : valid.error == valid.isEmpty
                            ? 'Креатинин не указан'
                            : valid.error == valid.isMax
                                ? 'Указанный креатинин не поддерживается приложением'
                                : valid.error == valid.isMin
                                    ? 'Указанный креатинин не поддерживается приложением'
                                    : valid.error == valid.isNoValid
                                        ? 'Неправильное значение'
                                        : null,
                    errorMaxLines: errorMaxLines2,
                    suffixText: 'мкмоль/л',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: widget.cubit.checkCreatinine,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(maxLength),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
