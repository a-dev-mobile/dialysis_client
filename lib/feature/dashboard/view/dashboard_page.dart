import 'package:dialysis/feature/dashboard/dashboard.dart';

import 'package:dialysis/l10n/l10n.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    super.key,
  });
  static const path = '/dashboard';
  static const name = 'dashboard';

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const DiaryPage(),
    const DiaryPage(),
    const DiaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: l.main,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: l.favorite,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: l.setting,
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
