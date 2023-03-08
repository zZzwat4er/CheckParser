import 'package:check_parser/domain/providers/services.dart';
import 'package:check_parser/ui/main/widget/buttons.dart';
import 'package:check_parser/ui/main/widget/debts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebtPage extends ConsumerWidget {
  const DebtPage({super.key});

  @override
  Widget build(context, ref) {
    final debts = ref.watch(ServiceLocator.debts);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: debts != null
                ? DebtsList(debts: debts)
                : const Center(child: Text('Something gose wrong')),
          ),
          const DebtButtons(),
        ],
      ),
    );
  }
}
