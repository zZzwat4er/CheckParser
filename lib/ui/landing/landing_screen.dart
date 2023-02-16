import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/check/check.dart';

class LandingScreen extends ConsumerStatefulWidget {
  const LandingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen> {

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(microseconds: 500));
    final check = ref.read(ServiceLocator.checkState);
    print(check);
    ref.read(ServiceLocator.router).initScreens(check: check);
  }

  @override
  Widget build(BuildContext context) {
    print('Entered: Landing');
    return const Scaffold();
  }
}
