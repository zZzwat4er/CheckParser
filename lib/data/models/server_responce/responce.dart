import 'package:freezed_annotation/freezed_annotation.dart';

part 'responce.freezed.dart';
part 'responce.g.dart';

@freezed
class ServerResponce with _$ServerResponce {
  const factory ServerResponce({
    required bool success,
    String? exception,
  }) = _ServerResponce;

  factory ServerResponce.fromJson(Map<String, dynamic> json) =>
      _$ServerResponceFromJson(json);
}
