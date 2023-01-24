// ignore_for_file:  avoid-nested-conditional-expressions, lines_longer_than_80_chars

import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FieldUrineOutput extends StatefulWidget {
  const FieldUrineOutput({
    super.key,
    required this.cubit,
  });

  final RegistrationCubit cubit;

  @override
  State<FieldUrineOutput> createState() => _FieldUrineOutputState();
}

class _FieldUrineOutputState extends State<FieldUrineOutput> {
  late final TextEditingController controller;

  @override
  void initState() {
    var initValue = '';
    final initDouble = widget.cubit.state.validUrineOutput.value;
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
          p.validUrineOutput.isPure != c.validUrineOutput.isPure ||
          p.validUrineOutput.value != c.validUrineOutput.value ||
          p.validDailyDiuresis.value != c.validDailyDiuresis.value ||
          p.isVisibleUrineOutput != c.isVisibleUrineOutput,
      builder: (context, state) {
        final valid = state.validUrineOutput;

        const errorMaxLines2 = 2;
        const maxLength = 6;

        return Visibility(
          visible: state.isVisibleUrineOutput,
          child: CardCustom(
            child: Column(
              children: [
                const TitleSub(
                  text: 'Укажите количество выделяемой мочи',
                  dialogText:
                      'Мы используем эти сведения для расчета суточной нормы потребления воды',
                ),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    // labelText: 'Моча',
                    errorText: valid.isPure
                        ? null
                        : valid.error == valid.isEmpty
                            ? 'Не указано количестов выделяемой мочи '
                            : valid.error == valid.isMax
                                ? 'Указанное значение мочи не поддерживается приложением'
                                : valid.error == valid.isMin
                                    ? 'Указанное значение мочи не поддерживается приложением'
                                    : valid.error == valid.isNoValid
                                        ? 'Неправильное значение'
                                        : null,
                    errorMaxLines: errorMaxLines2,
                    suffixText: 'мл',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: widget.cubit.checkUrineOutput,
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
