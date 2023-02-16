import 'package:freezed_annotation/freezed_annotation.dart';

part 'debts.freezed.dart';
part 'debts.g.dart';

@freezed
class Debts with _$Debts {
  const factory Debts({
    @JsonKey(name: 'AllDefined') required bool defined,
    @JsonKey(name: 'Stepan') required int stepa,
    @JsonKey(name: 'Valya') required int valentin,
    @JsonKey(name: 'Dima') required int dima,
    @JsonKey(name: 'Chuan') required int trong,
    @JsonKey(name: 'Tham') required int tham,
  }) = _Debts;

  factory Debts.fromJson(Map<String, dynamic> json) => _$DebtsFromJson(json);
}
