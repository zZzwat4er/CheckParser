import 'dart:convert';

import 'package:check_parser/data/models/check/check.dart';
import 'package:flutter/services.dart';

class SharedCheckRepository {
  static const _platform = MethodChannel('app.channel.shared.data');

  Future<Check?> tryGet() async {
    final string = await _platform.invokeMethod('getSharedText');
    if (string == null) return null;
    Map<String, dynamic> map = json.decode(string);
    if (map is! Map<String, dynamic>) return null;
    late final Check? result;
    try {
      result = Check.fromJson(map);
    } catch (e) {
      result = null;
    }
    return result;
  }
}
