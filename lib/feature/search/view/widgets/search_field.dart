import 'package:dialysis/feature/search/search.dart';
import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    final l = context.l10n;
    final controller = TextEditingController();

    return BlocBuilder<SearchBloc, SearchState>(
      buildWhen: (p, c) => p.validSearchFormz.value != c.validSearchFormz.value,
      builder: (context, state) {
        final valid = state.validSearchFormz;
        controller
          ..text = valid.value
          ..selection = TextSelection.collapsed(offset: controller.text.length);

        return TextField(
          textInputAction: TextInputAction.done,
          controller: controller,
          onChanged: (v) => bloc.add(SearchEventFind(find: v, l: l)),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _tapClean(controller, bloc),
                ),
            hintText: 'Найти продукт',
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            errorBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            errorText: valid.isPure
                ? null
                : valid.error == valid.isEmpty
                    ? null
                    : valid.error == valid.leght1
                        ? l.you_entered_1_3_characters
                        : valid.error == valid.leght2
                            ? l.you_entered_2_3_characters
                            : null,
          ),
        );
      },
    );
  }

  void _tapClean(TextEditingController controller, SearchBloc bloc) {
    controller.text = '';
    bloc.add(const SearchEventClean());
  }
}
