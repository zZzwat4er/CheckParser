import 'dart:convert';

import 'package:check_parser/data/models/api_paths.dart';
import 'package:check_parser/data/models/check/check.dart';
import 'package:check_parser/data/models/server_responce/responce.dart';
import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/check/server_check.dart';

class RemoteCheckRepository {
  final Ref ref;

  const RemoteCheckRepository(this.ref);

  Future<bool?> sendCheck(Check check) async {
    final dio = ref.read(ServiceLocator.dioRepository);
    if (dio == null) {
      return null;
    }
    assert(check.PaidBy != null, 'Trying to send check without payer');
    final responce = await dio.sendRequest<String>(
      method: 'POST',
      path: ApiPaths.pushCheck.path,
      data: check.toJson(),
    );

    if (responce.data != null) {
      final res = ServerResponce.fromJson(json.decode(responce.data!));
      return res.success;
    }
    return null;
  }

  Future<List<ServerCheck>?> getChecks(int beginId, int offset) async {
    final dio = ref.read(ServiceLocator.dioRepository);
    if (dio == null) {
      return null;
    }
    final data = {
      "BeginIndex": beginId,
      "Amount": offset,
    };
    final responce = await dio.sendRequest<String>(
      method: 'POST',
      path: ApiPaths.getCheck.path,
      data: data,
    );
    if (responce.data != null) {
      final list = json.decode(responce.data!)['Checks'] as List<dynamic>;
      return list
          .map((e) => ServerCheck.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }
}
