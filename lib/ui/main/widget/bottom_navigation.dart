import 'package:check_parser/domain/providers/services.dart';
import 'package:check_parser/domain/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  final void Function(int page) onChange;

  const BottomNavigationWidget({super.key, required this.onChange});

  @override
  ConsumerState<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => _setPage(value),
      currentIndex: page,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on_outlined),
          activeIcon: Icon(Icons.monetization_on),
          label: 'debt',
        ),
      ],
    );
  }

  void _setPage(int value) {
    setState(() {
      page = value;
    });
    widget.onChange(value);
  }
}
