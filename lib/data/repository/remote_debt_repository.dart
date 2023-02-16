import 'dart:convert';

import 'package:check_parser/data/models/debts/debts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/services.dart';
import '../models/api_paths.dart';

class RemoteDebtRepository{
  final Ref ref;

  const RemoteDebtRepository(this.ref);

  Future<Debts?> getDebts() async {
    final dio = ref.read(ServiceLocator.dioRepository);
    if (dio == null){
      return null;
    }
    final responce =
        await dio.sendRequest<String>(
              method: 'POST',
              path: ApiPaths.getDepts.path,
            );
    if (responce.data == null) throw Exception();

    return Debts.fromJson(json.decode(responce.data!)); 
  }
}