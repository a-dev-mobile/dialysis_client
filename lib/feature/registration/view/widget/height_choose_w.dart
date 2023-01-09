import 'package:dialysis/app/style/style.dart';
import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeightChoose extends StatelessWidget {
  const HeightChoose({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    return CardCustom(
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        buildWhen: (p, c) =>
            p.validHeightFormz.isPure != c.validHeightFormz.isPure ||
            p.validHeightFormz.value != c.validHeightFormz.value,
        builder: (context, state) {
          final valid = state.validHeightFormz;

          return Column(
            children: [
              const TitleSub(text: 'Укажите свой рост'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppDropDown(
                    hint: 'Рост',
                    value: state.validHeightFormz.value,
                    onChanged: cubit.checkHeight,
                    values: state.heightList,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'см',
                    style: AppTextStyles.caption(),
                  )
                ],
              ),
              if (valid.error == valid.notSelected && !valid.isPure)
                _buildError(context, 'Рост не выбран'),
            ],
          );
        },
      ),
    );
  }

  Widget _buildError(BuildContext context, String error) {
    return Column(
      children: [
        const SizedBox(height: 6),
        Text(
          error,
          style: context.textTheme.bodySmall!
              .copyWith(color: context.theme.errorColor),
        ),
      ],
    );
  }
}
