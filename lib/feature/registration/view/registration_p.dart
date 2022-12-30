import 'package:dialysis/app/style/style.dart';

import 'package:dialysis/core/widget/clean_focus.dart';
import 'package:dialysis/feature/registration/registration.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const _TitleMain(),
                  const SizedBox(height: 20),
                  const _TitleSub(text: 'Введите имя'),
                  const SizedBox(height: 10),
                  NameField(cubit: cubit),
                  const SizedBox(height: 20),
                  const GenderChoose(),
                  const SizedBox(height: 20),
                  const ActivityChoose(),
                  const SizedBox(height: 20),
                  DropdownButton(
                      hint: Text('ММ'),
                      items: [
                        DropdownMenuItem(
                          child: Text('ЯНВ.1'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('ЯНВ.2'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('ЯНВ.3'),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text('ЯНВ.4'),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Text('ЯНВ.5'),
                          value: 5,
                        ),
                        DropdownMenuItem(
                          child: Text('ЯНВ.6'),
                          value: 6,
                        ),
                      ],
                      onChanged: (v) {
                        print(v);
                      }),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        cubit.checkAll();
                      },
                      child: const Text('Начать'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleSub extends StatelessWidget {
  const _TitleSub({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.bodyText2(),
      textAlign: TextAlign.center,
    );
  }
}

class _TitleMain extends StatelessWidget {
  const _TitleMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Здраствуйте!\nРасскажите о себе',
      style: AppTextStyles.h4(),
      textAlign: TextAlign.center,
    );
  }
}
