import 'package:check_parser/data/models/check/check.dart';
import 'package:riverpod/riverpod.dart';

class SharedCheckStateNotifier extends StateNotifier<Check?>{
  
  SharedCheckStateNotifier(super.state);
  
  void updateState(Check? newState) => state = newState;
}