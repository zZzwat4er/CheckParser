import 'package:freezed_annotation/freezed_annotation.dart';

import '../item/item.dart';
import '../users.dart';

part 'check.freezed.dart';
part 'check.g.dart';

@freezed
class Check with _$Check {
  const factory Check({
    required String user,
    required int dateTime,
    required List<Item> items,
    required int totalSum,
    required String fiscalDriveNumber,
    required int fiscalDocumentNumber,
    required int fiscalSign,
    Users? PaidBy,
    String? retailPlaceAddress,
    String? userInn,
    int? requestNumber,
    int? shiftNumber,
    int? operationType,
    int? cashTotalSum,
    int? ecashTotalSum,
    String? kktRegId,
    int? ndsNo,
    int? code,
    int? fiscalDocumentFormatVer,
    String? machineNumber,
    String? retailPlace,
    String? buyerPhoneOrAddress,
    int? prepaidSum,
    int? creditSum,
    int? provisionSum,
    String? sellerAddress,
    int? taxationType,
    String? localDateTime,
  }) = _Check;

  factory Check.fromJson(Map<String, dynamic> json) => _$CheckFromJson(json);
}
