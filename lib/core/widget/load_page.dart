import 'dart:ui' as ui;

import 'package:dialysis/core/widget/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';

/// {@template load_page}
/// Widget with disabling user action during load
/// {@endtemplate}
class LoadPage extends StatelessWidget {
  const LoadPage({super.key, this.isLoad = false, required this.child});
  final Widget child;
  final bool isLoad;
  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Positioned.fill(
            child: child,
          ),
          Positioned.fill(
            child: AbsorbPointer(
              absorbing: isLoad,
              child: AnimatedSwitcher(
                duration: const Duration(microseconds: 350),
                child: isLoad
                    ? ClipRRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: const Center(
                            child: RepaintBoundary(
                              child: AppPageProgressIndicator(),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          )
        ],
      );
}
