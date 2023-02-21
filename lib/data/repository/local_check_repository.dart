import 'package:check_parser/data/models/check/check.dart';
import 'package:hive/hive.dart';

class LocalCheckRepository {
  final Box<Map<dynamic, dynamic>> _box;

  const LocalCheckRepository(this._box);

  void save(Check check) {
    final json = check.toJson();
    json['items'] = json['items'].map((e) => e.toJson()).toList();
    _box.add(json);
  }

  void deleteFirst() {
    _box.deleteAt(0);
  }

  List<Check> loadAll() => _box.values.map((e) {
        final map = Map<String, dynamic>.from(e);
        map['items'] = map['items'].map((e) => Map<String, dynamic>.from(e)).toList();
        return Check.fromJson(map);
      }).toList();
}
