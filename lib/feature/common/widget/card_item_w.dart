

import 'package:flutter/material.dart';


class CardCustom extends StatelessWidget {
  const CardCustom({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {


    return Card(
      elevation: 1,
      child: Padding(padding: const EdgeInsets.all(8), child: child),
    );
  }
}
