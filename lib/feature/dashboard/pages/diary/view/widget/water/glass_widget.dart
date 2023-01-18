
import 'package:dialysis/feature/dashboard/pages/diary/diary.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// {@template glass_widget}
/// GlassWidget widget
/// {@endtemplate}
class GlassWidget extends StatefulWidget {
  /// {@macro glass_widget}
  const GlassWidget({
    super.key,
    required this.number,
    required this.status,
    this.isEmpty = false,
    this.onTap,
  });
  final int number;
  final bool isEmpty;
  final GlassStatusEnum status;

  final void Function(int number)? onTap;
  @override
  State<GlassWidget> createState() => _GlassWidgetState();
}

class _GlassWidgetState extends State<GlassWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const assets = 'assets/lottie/water_up.json';

    return GestureDetector(
      onTap: () => widget.onTap?.call(widget.number),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Stack(
          children: [
            Lottie.asset(
              assets,
              controller: _controller,
              width: 30,
              height: 50,
              fit: BoxFit.fill,
              onLoaded: (composition) {
                // Configure the AnimationController with the duration of the
                // Lottie file and start the animation.
                if (!widget.isEmpty) {
                  _controller
                    ..duration = composition.duration
                    ..forward();
                }
              },
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: _GlassStatus(status: widget.status),
            ),
          ],
        ),
      ),
    );
  }
}

class _GlassStatus extends StatelessWidget {
  const _GlassStatus({
    required this.status,
  });

  final GlassStatusEnum status;

  @override
  Widget build(BuildContext context) {
    return status.map(
      isSimple: SizedBox.shrink,
      isGood: () => Icon(Icons.check_circle,color: Theme.of(context).colorScheme.secondary),
      isBad: () => Icon(Icons.cancel,color: Theme.of(context).colorScheme.error),
    );
  }
}
