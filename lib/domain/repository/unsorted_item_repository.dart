import 'package:check_parser/data/models/item/server_item.dart';
import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnsortedItemStateNotifier extends StateNotifier<ServerItem?> {
  final Ref ref;
  
  UnsortedItemStateNotifier(super.state, this.ref);

  void fetch() async{
    state = await ref.read(ServiceLocator.itemRepository).getUnsortedItem();
  }

  void updateState(ServerItem? newState) => state = newState;
}
