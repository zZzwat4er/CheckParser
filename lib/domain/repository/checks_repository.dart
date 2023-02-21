import 'package:check_parser/data/models/check/check.dart';
import 'package:check_parser/data/repository/local_check_repository.dart';
import 'package:check_parser/data/repository/remote_check_repository.dart';
import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/check/server_check.dart';

class CheckListStateNotifier extends StateNotifier<List<ServerCheck>> {
  final RemoteCheckRepository remoteRepo;
  final LocalCheckRepository localRepo;

  CheckListStateNotifier(super.state, this.remoteRepo, this.localRepo);

  Future<bool?> sendCheck(Check check) async {
    final res = await remoteRepo.sendCheck(check);
    print('Res: res');
    if(res == null){
      print('Save Check');
      localRepo.save(check);
    }
    return res;
  }

  void clear() {
    updateState([]);
  }

  void tryMerge() async {
    final savedChecks = localRepo.loadAll();
    print('Checks ${savedChecks.map((e) => e.user)}');
    for(final check in savedChecks){
      final res = await remoteRepo.sendCheck(check);
      if(res == null) return;
      localRepo.deleteFirst();
    }
  }

  void fetch() async {
    final temp = await remoteRepo.getChecks(state.length, 10);
    if (temp == null || temp.isEmpty) return;
    updateState([...state, ...temp]);
  }

  void updateState(List<ServerCheck> newState) => state = newState;
}
