// ignore_for_file: lines_longer_than_80_chars


import 'package:dialysis/feature/registration/registration.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatinineField extends StatefulWidget {
  const CreatinineField({
    super.key,
    required this.cubit,
  });

  final RegistrationCubit cubit;

  @override
  State<CreatinineField> createState() => _CreatinineFieldState();
}

class _CreatinineFieldState extends State<CreatinineField> {
  late final TextEditingController controller;

  @override
  void initState() {
    var initValue = '';
    final initDouble = widget.cubit.state.validCreatinineFormz.value;
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
          p.validCreatinineFormz.isPure != c.validCreatinineFormz.isPure ||
          p.validCreatinineFormz.value != c.validCreatinineFormz.value ||
          // for visible
          p.validCkdFormz.value != c.validCkdFormz.value,
      builder: (context, state) {
        final valid = state.validCreatinineFormz;

        return Visibility(
          visible: state.validCkdFormz.value == CkdEnum.not_know,
          child: Column(
            children: [
              // const SizedBox(height: 10),
              const TitleSub(
                text: 'Укажите свой креатинин',
                dialogText:
                    'Мы используем эти сведения для расчета клубочковой фильтрации',
              ),
              // const SizedBox(height: 10),
              TextField(
                controller: controller,
                onChanged: widget.cubit.checkCreatinine,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                ],
                decoration: InputDecoration(
                  suffixText: 'мкмоль/л',
                  labelText: 'Креатинин',
                  errorMaxLines: 2,
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
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
