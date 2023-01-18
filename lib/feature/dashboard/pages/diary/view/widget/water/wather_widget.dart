import 'package:dialysis/core/utils/app_utils.dart';
import 'package:dialysis/core/widget/progress_indicator/page.dart';
import 'package:dialysis/feature/common/common.dart';
import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WaterWidget extends StatelessWidget {
  const WaterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubitWater = context.read<WaterCubit>();

    return BlocBuilder<WaterCubit, WaterState>(
      builder: (context, state) {
        if (state.isLoadPage) return const PageStartLoad();

        final maxWaterFormat =
            AppUtilsNumber.getFormatNumber(num: cubitWater.state.maxWater);

        return CardCustom(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const Text('Потребление воды'),
                Text('Цель $maxWaterFormat мл'),
                BlocBuilder<WaterCubit, WaterState>(
                  builder: (context, state) {
                    final currentWater =
                        AppUtilsNumber.getFormatNumber(num: state.currentWater);

                    return Text('$currentWater мл');
                  },
                  buildWhen: (p, c) => p.currentWater != c.currentWater,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [_BuildWrapGlass(), _BuildBtn()],
                ),
              ],
            ),
          ),
        );
      },
      buildWhen: (p, c) => p.isLoadPage != c.isLoadPage,
    );
  }
}

class _BuildBtn extends StatelessWidget {
  const _BuildBtn();

  @override
  Widget build(BuildContext context) {
    final cubitWater = context.read<WaterCubit>();

    return Column(
      children: [
        IconButton(
          onPressed: cubitWater.increment,
          icon: const Icon(Icons.add_box_outlined),
        ),
        IconButton(
          onPressed: cubitWater.decrement,
          icon: const Icon(
            Icons.indeterminate_check_box_outlined,
          ),
        ),
      ],
    );
  }
}

class _BuildWrapGlass extends StatelessWidget {
  const _BuildWrapGlass();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<WaterCubit, WaterState>(
        builder: (context, state) {
          return Stack(
            children: [
              Wrap(
                children: [
                  for (int i = 0; i < state.glassList.length; i++)
                    GlassWidget(
                      number: i,
                      status: state.glassList[i].glassStatus,
                      // ignore: avoid_print
                      onTap: (v) => print('-- click $v'),
                    ),
                ],
              ),
              _BuildEmptyRecomendGlass(
                sumEmptyRecomendGlass: state.sumRecomendGlass,
              ),
            ],
          );
        },
        buildWhen: (p, c) => p.glassList != c.glassList,
      ),
    );
  }
}

class _BuildEmptyRecomendGlass extends StatelessWidget {
  const _BuildEmptyRecomendGlass({
    required this.sumEmptyRecomendGlass,
  });
  final int sumEmptyRecomendGlass;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < sumEmptyRecomendGlass; i++)
          GlassWidget(
            number: i,
            status: GlassStatusEnum.isSimple,
            isEmpty: true,
          ),
      ],
    );
  }
}
