import 'package:check_parser/data/models/check/check.dart';
import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/check/server_check.dart';

class CheckListStateNotifier extends StateNotifier<List<ServerCheck>> {
  final Ref ref;

  CheckListStateNotifier(super.state, this.ref);

  Future<bool?> sendCheck(Check check) => ref.read(ServiceLocator.checkRepository).sendCheck(check);

  void clear(){
    updateState([]);
  }

  void fetch() async {
    final temp = await ref
        .read(ServiceLocator.checkRepository)
        .getChecks(state.length, 10);
    if(temp == null || temp.isEmpty) return;
    updateState([...state, ...temp]);
  }

  void updateState(List<ServerCheck> newState) => state = newState;
}
