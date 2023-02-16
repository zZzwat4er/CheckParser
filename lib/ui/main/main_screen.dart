import 'package:check_parser/domain/providers/services.dart';
import 'package:check_parser/ui/main/check_list.dart';
import 'package:check_parser/ui/main/widget/bottom_navigation.dart';
import 'package:check_parser/ui/main/widget/ip_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'debt_page.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  Widget currentChild = const CheckList();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              final ip = await showDialog<String?>(
                context: context,
                builder: (context) {
                  return const IpDialog();
                },
              );
              if (ip != null) {
                ref.read(ServiceLocator.ip.notifier).setIp(ip);
              }
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: SafeArea(child: currentChild),
      bottomNavigationBar: BottomNavigationWidget(onChange: _picChild),
    );
  }

  void _picChild(int value) {
    switch (value) {
      case 0:
        currentChild = const CheckList();
        break;
      case 1:
        currentChild = const DebtPage();
        break;
    }
    setState(() {});
  }
}
