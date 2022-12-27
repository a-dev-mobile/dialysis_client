import 'dart:async';

import 'package:flutter/material.dart';



import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class FieldFio extends StatefulWidget {
  const FieldFio({
    super.key,
    this.initValue = '',
    this.labelText = '',
    this.errorText,
    required this.onChanged,
    required this.suggestionsCallback,
  });

  final String initValue;
  final String labelText;
  final String? errorText;
  final void Function(String value) onChanged;

  final FutureOr<Iterable<String>> Function(String value) suggestionsCallback;
  @override
  State<FieldFio> createState() => _FieldFioState();
}

class _FieldFioState extends State<FieldFio> {
  late final TextEditingController controller;
  late final MaskTextInputFormatter maska;
  @override
  void initState() {
    controller = TextEditingController(text: widget.initValue);
    maska = MaskTextInputFormatter(
      mask: '########################################',
      filter: {
        // '#': RegExp('^([a-zA-Z0-9]+\s)*[a-zA-Z0-9]+\$')/,
        '#': RegExp('^[a-zA-Zа-яёА-ЯЁ-]'),
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      hideOnEmpty: true,
      hideOnLoading: true,
      hideOnError: true,
      hideSuggestionsOnKeyboardHide: false,
  
      textFieldConfiguration: TextFieldConfiguration(
        //
        inputFormatters: [maska,],
        controller: controller,
        onChanged: (value) {
          widget.onChanged(value);
        },
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
    
      ),
      suggestionsCallback: (pattern) async =>
          widget.suggestionsCallback(pattern),
      itemBuilder: (context, String suggestion) {
        return ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          title: Text(suggestion),
        );
      },
      onSuggestionSelected: (String suggestion) {
        widget.onChanged(suggestion);

        _updateMaskAndController(suggestion);
      },
    );
  }

  void _updateMaskAndController(String value) {
    controller.text = value;
    maska.formatEditUpdate(
      TextEditingValue.empty,
      TextEditingValue(text: value),
    );
  }
}
