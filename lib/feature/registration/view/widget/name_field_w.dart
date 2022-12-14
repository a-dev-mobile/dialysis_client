
import 'package:dialysis/feature/registration/registration.dart';

import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class NameField extends StatefulWidget {
  const NameField({
    super.key,
    required this.cubit,
  });

  final RegistrationCubit cubit;

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller =
        TextEditingController(text: widget.cubit.state.validNameFormz.value);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    return BlocBuilder<RegistrationCubit, RegistrationState>(
      buildWhen: (p, c) =>
          p.validNameFormz.isPure != c.validNameFormz.isPure ||
          p.validNameFormz.value != c.validNameFormz.value,
      builder: (context, state) {
        final valid = state.validNameFormz;

        return CardCustom(
          child: Column(
            children: [
              const TitleSub(text: 'Введите имя'),
              const SizedBox(height: 10),
              TypeAheadField(
                hideOnEmpty: true,
                hideOnLoading: true,
                hideOnError: true,
                textFieldConfiguration: TextFieldConfiguration(
                  controller: controller,
                  onChanged: widget.cubit.checkName,
                  keyboardType: TextInputType.name,
                  //  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: l.name,
                    errorText: valid.isPure
                        ? null
                        : valid.error == valid.maxLength
                            ? l.max_text_length
                            : valid.error == valid.isEmpty
                                ? l.enter_name
                                : null,
                  ),
                ),
                suggestionsCallback: widget.cubit.getSuggestionsName,
                itemBuilder: (context, String suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                onSuggestionSelected: (String suggestion) {
                  widget.cubit.checkName(suggestion);
                  controller.text = suggestion;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
