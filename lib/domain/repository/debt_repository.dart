import 'package:check_parser/data/models/debts/debts.dart';
import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebtsStateNotifier extends StateNotifier<Debts?> {
  final Ref ref;
  
  DebtsStateNotifier(super.state, this.ref);

  void fetchDebts() async {
    state = await ref.read(ServiceLocator.debtRepository).getDebts();
  }

  void updateState(Debts newState) => state = newState;
}
