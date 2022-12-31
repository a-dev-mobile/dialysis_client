import 'package:flutter/material.dart';

class DateDropDown extends StatelessWidget {
  const DateDropDown({
    super.key,
    required this.values,
    required this.hint,
    required this.onChanged,
    this.value,
  });
  final List<String> values;
  final String hint;
  final String? value;
  final void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    // проверка на ошибку
    var isError = false;
    if (value != null) {
      isError = !values.contains(value);
    }

    return DropdownButton<String>(
      hint: Text(hint),
      value: isError ? null : value,
      items: [
        for (final v in values)
          DropdownMenuItem(
            value: v,
            child: Text(v),
          )
      ],
      onChanged: onChanged,
    );
  }
}
