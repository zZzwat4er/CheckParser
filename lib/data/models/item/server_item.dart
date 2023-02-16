import 'package:freezed_annotation/freezed_annotation.dart';

import '../users.dart';

part 'server_item.freezed.dart';
part 'server_item.g.dart';

@freezed
class ServerItem with _$ServerItem {

  const ServerItem._();

  const factory ServerItem({
    @JsonKey(name: 'ItemId') int? id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Money') required int sum,
    @JsonKey(name: 'PaidBy') required Users paidBy,
    @JsonKey(name: 'DateTime') int? dateInMiliseconds,
    @JsonKey(name: 'ShopName') String? shopName,
    @JsonKey(name: 'Quantity') double? quantity,
    @JsonKey(name: 'Stepan') int? debtStepa,
    @JsonKey(name: 'Valya') int? debtValentin,
    @JsonKey(name: 'Dima') int? debtDima,
    @JsonKey(name: 'Chuan') int? debtChuan,
    @JsonKey(name: 'Tham') int? debtTham,
    @JsonKey(name: 'IsDefined') int? isDefined,
  }) = _ServerItem;

  factory ServerItem.fromJson(Map<String, dynamic> json) =>
      _$ServerItemFromJson(json);

  List<Users> getDebters() => [
        if (debtStepa != 0) Users.stepa,
        if (debtValentin != 0) Users.valentin,
        if (debtDima != 0) Users.dima,
        if (debtTham != 0) Users.tham,
        if (debtChuan != 0) Users.trong,
      ];
  
  bool getIsDefined() => !(isDefined == 0);
}
