import 'package:dialysis/app/style/style.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/l10n/l10n.dart';

import 'package:dialysis/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  static const path = '/registration';
  static const name = 'registration';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegistrationCubit(
            router: context.read<AppRouter>(),
            clienTips: context.read(),
          )..load(),
        ),
      ],
      child: const _RegistrationPage(),
    );
  }
}

class _RegistrationPage extends StatelessWidget {
  const _RegistrationPage();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

    final l = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'Здраствуйте! Расскажите о себе',
                  style: AppTextStyles.h4(),
                ),
                const SizedBox(height: 20),
                BlocBuilder<RegistrationCubit, RegistrationState>(
                  buildWhen: (p, c) =>
                      p.nameValid.pure != c.nameValid.pure ||
                      p.nameValid.value != c.nameValid.value,
                  builder: (context, state) {
                    return FieldFio(
                      errorText: errorValidName(state.nameValid, l),
                      initValue: state.nameValid.value,
                      labelText: 'Имя',
                      suggestionsCallback: cubit.getSuggestionsName,
                      onChanged: cubit.checkName,
                    );
                  },
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Начать')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
