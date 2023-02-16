import 'package:check_parser/data/models/item/server_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_check.freezed.dart';
part 'server_check.g.dart';

@freezed
class ServerCheck with _$ServerCheck {
  const factory ServerCheck({
    @JsonKey(name: 'ShopName') required String shopName,
    @JsonKey(name: 'DateTime') required int dateTime,
    required List<ServerItem> items,
    @JsonKey(name: 'FnFd') required String fnfd,
  }) = Server_Check;

  factory ServerCheck.fromJson(Map<String, dynamic> json) =>
      _$ServerCheckFromJson(json);
}
