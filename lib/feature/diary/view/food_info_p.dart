import 'package:dialysis/app/style/extensions/extensions.dart';
import 'package:dialysis/core/widget/progress_indicator/page.dart';

import 'package:dialysis/feature/diary/diary.dart';
import 'package:dialysis/feature/registration/registration.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});
  static const path = '/diary';
  static const name = 'diary';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DiaryCubit(storage: context.read())..load(),
        ),
      ],
      child: const _DiaryPage(),
    );
  }
}

class _DiaryPage extends StatelessWidget {
  const _DiaryPage();
  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<DiaryCubit>();
    // final l = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DiaryCubit, DiaryState>(
          buildWhen: (p, c) => p.isLoadPage != c.isLoadPage,
          builder: (context, state) {
            if (state.isLoadPage) return const PageStartLoad();
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TitleDate(),
                  Placeholder(fallbackHeight: context.heightPx / 4),
                  Pages(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TitleDate extends StatelessWidget {
  const TitleDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DiaryCubit>();

    return BlocBuilder<DiaryCubit, DiaryState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.keyboard_arrow_left),
              onPressed: cubit.decrement,
            ),
            Text(
              state.currentFormatDay,
            ),
            IconButton(
              icon: const Icon(Icons.keyboard_arrow_right),
              onPressed: cubit.decrement,
            ),
          ],
        );
      },
    );
  }
}

class Pages extends StatelessWidget {
  const Pages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('build');
    return Column(
      children: <Widget>[
        CardCustom(
          child: ListTile(
            title: const Text('1 Завтрак'),
            trailing: IconButton(icon: const Icon(Icons.add), onPressed: () {}),
          ),
        ),
        CardCustom(
          child: ListTile(
            title: const Text('2 Завтрак'),
            trailing: IconButton(icon: const Icon(Icons.add), onPressed: () {}),
          ),
        ),
        ListTile(
          title: const Text('Обед'),
          trailing: IconButton(icon: const Icon(Icons.add), onPressed: () {}),
        ),
      ],
    );
  }
}
