import 'package:check_parser/data/models/check/check.dart';
import 'package:check_parser/data/models/item/server_item.dart';
import 'package:check_parser/data/repository/local_ip_repository.dart';
import 'package:check_parser/data/repository/remote_debt_repository.dart';
import 'package:check_parser/data/repository/remote_item_repository.dart';
import 'package:check_parser/data/repository/shared_check_repository.dart';
import 'package:check_parser/domain/repository/debt_repository.dart';
import 'package:check_parser/domain/repository/ip_repository.dart';
import 'package:check_parser/domain/repository/shared_check_repository.dart';
import 'package:check_parser/domain/repository/dio_repository.dart';
import 'package:check_parser/domain/repository/unsorted_item_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/models/check/server_check.dart';
import '../../data/models/debts/debts.dart';
import '../../data/models/ip/ip.dart';
import '../../data/models/users.dart';
import '../../data/repository/local_check_repository.dart';
import '../../data/repository/remote_check_repository.dart';
import '../repository/checks_repository.dart';
import '../router/router.dart' as app_router;

class ServiceLocator {
  static late final Provider<app_router.Router> router;
  static late final Provider<RemoteDebtRepository> debtRepository;
  static late final Provider<RemoteItemRepository> itemRepository;
  static late final Provider<DioRepository?> dioRepository;

  static late final StateNotifierProvider<SharedCheckStateNotifier, Check?>
      checkState;
  static late final StateNotifierProvider<CheckListStateNotifier,
      List<ServerCheck>> checkList;
  static late final StateNotifierProvider<UnsortedItemStateNotifier,
      ServerItem?> unsortedItem;
  static late final StateNotifierProvider<DebtsStateNotifier, Debts?> debts;
  static late final StateNotifierProvider<IpStateNotifier, IP?> ip;

  static final Provider<GlobalKey<ScaffoldMessengerState>> massangerKey =
      Provider((ref) => GlobalKey<ScaffoldMessengerState>());

  static const mockCheck = {
    "user": "ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ТАТВЕНД\"",
    "retailPlaceAddress": "Иннополис, Университетская ул., д.1к.1",
    "userInn": "7731373963  ",
    "requestNumber": 704,
    "shiftNumber": 158,
    "operationType": 1,
    "totalSum": 3000,
    "cashTotalSum": 0,
    "ecashTotalSum": 3000,
    "kktRegId": "0004993352021138    ",
    "fiscalDriveNumber": "9961440300965403",
    "fiscalDocumentNumber": 153832,
    "fiscalSign": 2693375555,
    "items": [
      {
        "name": "Сухарики",
        "price": 3000,
        "sum": 3000,
        "quantity": 1.0,
        "paymentType": 4,
        "nds": 6,
        "ndsSum": 0
      }
    ],
    "ndsNo": 3000,
    "code": 3,
    "fiscalDocumentFormatVer": 2,
    "machineNumber": "I15203226",
    "retailPlace": "1 корп.,1эт.",
    "buyerPhoneOrAddress": "stepan14511@gmail.com",
    "prepaidSum": 0,
    "creditSum": 0,
    "provisionSum": 0,
    "sellerAddress": "noreply@uvenco.ru",
    "dateTime": 1675535220,
    "taxationType": 4,
    "localDateTime": "2023-02-04T21:27"
  };

  static const mockCheckList = [
    ServerCheck(
      shopName: 'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ТАТВЕНД\"',
      dateTime: 1675535220,
      items: [
        ServerItem(
          name: 'Сухарики',
          sum: 3000,
          paidBy: Users.valentin,
        ),
        ServerItem(
          name: 'Сухарики',
          sum: 3000,
          paidBy: Users.valentin,
        ),
      ],
      fnfd: 'fnfd',
    ),
  ];

  static const mockDebts = Debts(
    defined: true,
    stepa: 11,
    valentin: 12,
    dima: 13,
    trong: 14,
    tham: 15,
  );

  static const mockItem = ServerItem(
    name: 'Сухарики',
    sum: 3000,
    paidBy: Users.valentin,
  );

  static Future<void> init() async {
    _initRouter();
    _initDio();
    await _initHive();
    await _initIp();
    await _initDebts();
    await _initItem();
    await _initCheck();
  }

  static Future<void> _initHive() async {
    if (!kIsWeb) {
      final directory = await getApplicationDocumentsDirectory();
      Hive.init(directory.path);
      Hive.registerAdapter(IPAdapter());
    }
  }

  static Future<void> _initIp() async {
    final box = await Hive.openBox<IP>('ipBox');
    final repo = LocalIpRepository(box);

    ip = StateNotifierProvider((ref) {
      final notifyer = IpStateNotifier(repo.get(), repo);
      repo.listen((ip) {
        notifyer.updateState(ip);
      });
      return notifyer;
    });
  }

  static void _initRouter() {
    router = Provider<app_router.Router>((ref) => app_router.Router());
  }

  static void _initDio() {
    dioRepository = Provider<DioRepository?>((ref) {
      final currentIP = ref.watch(ip);
      if (currentIP != null) {
        return DioRepository(currentIP, ref);
      }
      return null;
    });
  }

  static Future<void> _initItem() async {
    itemRepository = Provider((ref) => RemoteItemRepository(ref));

    unsortedItem = StateNotifierProvider(
        (ref) => UnsortedItemStateNotifier(null, ref)..fetch());
  }

  static Future<void> _initDebts() async {
    debtRepository = Provider((ref) => RemoteDebtRepository(ref));

    debts = StateNotifierProvider((ref) {
      ref.watch(dioRepository);
      ref.watch(unsortedItem);
      return DebtsStateNotifier(null, ref)..fetchDebts();
    });
  }

  static Future<void> _initCheck() async {
    final box = await Hive.openBox<Map<dynamic, dynamic>>('checkBox');
    final check = await SharedCheckRepository().tryGet();
    // final check = Check.fromJson(mockCheck);
    checkState = StateNotifierProvider((ref) {
      return SharedCheckStateNotifier(check);
    });
    checkList = StateNotifierProvider((ref) {
      ref.watch(dioRepository);
      return CheckListStateNotifier(
        [],
        RemoteCheckRepository(ref),
        LocalCheckRepository(box),
      )
        // ..clear()
        ..tryMerge()
        ..fetch();
    });
  }
}
