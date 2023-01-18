import 'package:dialysis/app/style/extensions/extensions.dart';
import 'package:dialysis/core/widget/progress_indicator/page.dart';
import 'package:dialysis/feature/common/common.dart';

import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:dialysis/navigation/app_router.dart';

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
          create: (context) =>
              DiaryCubit(storage: context.read(), go: context.read<AppRouter>())
                ..load(),
        ),
        BlocProvider(
          create: (context) => WaterCubit()..load(),
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
    final cubit = context.read<DiaryCubit>();
    // final l = context.l10n;

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DiaryCubit, DiaryState>(
          builder: (context, state) {
            if (state.isLoadPage) return const PageStartLoad();

            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  Stack(
                    children: [
                      const _TitleDate(),
                      Positioned(
                        right: 0,
                        child: IconButton(
                          onPressed: cubit.goCalendar,
                          icon: const Icon(Icons.calendar_month),
                        ),
                      ),
                    ],
                  ),
                  Placeholder(fallbackHeight: context.heightPx / 4),
                  const WaterWidget(),
                  const _Pages(),
                ],
              ),
            );
          },
          buildWhen: (p, c) => p.isLoadPage != c.isLoadPage,
        ),
      ),
    );
  }
}

class _TitleDate extends StatelessWidget {
  const _TitleDate();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DiaryCubit>();

    return BlocBuilder<DiaryCubit, DiaryState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: cubit.decrement,
              icon: const Icon(Icons.keyboard_arrow_left),
            ),
            Text(
              state.currentFormatDay,
            ),
            IconButton(
              onPressed: cubit.increment,
              icon: const Icon(Icons.keyboard_arrow_right),
            ),
          ],
        );
      },
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardCustom(
          child: ListTile(
            title: const Text('1 Завтрак'),
            trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          ),
        ),
        CardCustom(
          child: ListTile(
            title: const Text('2 Завтрак'),
            trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          ),
        ),
        ListTile(
          title: const Text('Обед'),
          trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ),
      ],
    );
  }
}
