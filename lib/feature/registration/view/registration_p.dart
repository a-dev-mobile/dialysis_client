import 'package:dialysis/app/style/style.dart';

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/feature/registration/registration.dart';
import 'package:dialysis/feature/registration/view/widget/diabetes_choose_w.dart';


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
            storage: context.read(),
        
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

    // final l = context.l10n;
    return ClearFocus(
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<RegistrationCubit, RegistrationState>(
            buildWhen: (p, c) =>
                p.isLoadPage != c.isLoadPage ||
                p.isLoadNextPage != c.isLoadNextPage,
            builder: (context, state) {
              if (state.isLoadPage) return const PageStartLoad();

              return LoadNextPage(
                isLoad: state.isLoadNextPage,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const _TitleMain(),
                        const SizedBox(height: 20),

                        NameField(cubit: cubit),

                        const GenderChoose(),
                        // const SizedBox(height: 20),
                        const ActivityChoose(),
                        const HypertensionChoose(),
                        const DiabetesChoose(),
                        const BirthdayChoose(),

                        const HeightChoose(),

                        WeightField(cubit: cubit),

                        const CkdChoose(),
                        CreatinineField(cubit: cubit),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (cubit.isValid()) {
                                cubit.nextPage();
                              }
                            },
                            child: const Text('Начать'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Нажимая далее вы соглашаетесь с'),
                        TextButton(
                          onPressed: cubit.openPolicy,
                          child: const Text('Политика конфиденциальности'),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _TitleMain extends StatelessWidget {
  const _TitleMain();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Здраствуйте!\nРасскажите о себе',
      style: AppTextStyles.h4(),
      textAlign: TextAlign.center,
    );
  }
}
