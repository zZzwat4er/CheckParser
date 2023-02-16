import 'dart:convert';
import 'dart:developer';

import 'package:check_parser/data/models/item/server_item.dart';
import 'package:check_parser/data/models/server_responce/responce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/services.dart';
import '../models/api_paths.dart';
import '../models/users.dart';

class RemoteItemRepository {
  final Ref ref;

  const RemoteItemRepository(this.ref);

  Future<ServerItem?> getUnsortedItem() async {
    final dio = ref.read(ServiceLocator.dioRepository);
    if (dio == null){
      return null;
    }
    final responce =
        await dio.sendRequest<String>(
              method: 'POST',
              path: ApiPaths.getUnsortedItem.path,
            );
    if (responce.data != null) {
      try {
        return ServerItem.fromJson(json.decode(responce.data!));
      } catch (e) {
        log(e.toString());
      }
    }
    return null;
  }

  Future<ServerItem?> sendSortedItem(int id, Set<Users> users) async {
    final dio = ref.read(ServiceLocator.dioRepository);
    if (dio == null){
      return null;
    }
    final data = {
      "ItemId": id,
      "Stepan": _boolToData(users.contains(Users.stepa)),
      "Valya": _boolToData(users.contains(Users.valentin)),
      "Dima": _boolToData(users.contains(Users.dima)),
      "Chuan": _boolToData(users.contains(Users.trong)),
      "Tham": _boolToData(users.contains(Users.tham)),
    };
    final responce =
        await dio.sendRequest<String>(
              method: 'POST',
              path: ApiPaths.setUnsortedItem.path,
              data: data,
            );
    if (responce.data != null) {
      try {
        return ServerItem.fromJson(json.decode(responce.data!));
      } catch (e) {
        log(e.toString());
      }
    }
    return null;
  }

  int _boolToData(bool value) => (value) ? 1 : 0;
}
