
import 'package:dialysis/feature/registration/registration.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeightField extends StatefulWidget {
  const WeightField({
    super.key,
    required this.cubit,
  });

  final RegistrationCubit cubit;

  @override
  State<WeightField> createState() => _WeightFieldState();
}

class _WeightFieldState extends State<WeightField> {
  late final TextEditingController controller;

  @override
  void initState() {
    var initValue = '';
    final initDouble = widget.cubit.state.validWeightFormz.value;
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
        buildWhen: (p, c) =>
            p.validWeightFormz.isPure != c.validWeightFormz.isPure ||
            p.validWeightFormz.value != c.validWeightFormz.value,
        builder: (context, state) {
          final valid = state.validWeightFormz;
    
          return Column(
            children: [
                     const TitleSub(text: 'Укажите свой текущий вес'),
                          const SizedBox(height: 10),
              TextField(
                controller: controller,
                onChanged: widget.cubit.checkWeight,
                // textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                ],
                decoration: InputDecoration(
                  suffixText: 'кг',
                  labelText: 'Вес',
                          errorMaxLines: 2,
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
