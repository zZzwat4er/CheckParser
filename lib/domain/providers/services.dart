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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/models/check/server_check.dart';
import '../../data/models/debts/debts.dart';
import '../../data/models/ip/ip.dart';
import '../../data/repository/remote_check_repository.dart';
import '../repository/checks_repository.dart';
import '../router/router.dart';

class ServiceLocator {
  static late final Provider<Router> router;
  static late final Provider<RemoteCheckRepository> checkRepository;
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
    router = Provider<Router>((ref) => Router());
  }

  static void _initDio() {
    dioRepository = Provider<DioRepository?>((ref) {
      final currentIP = ref.watch(ip);
      if (currentIP != null) {
        return DioRepository(currentIP);
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
    checkRepository =
        Provider<RemoteCheckRepository>((ref) => RemoteCheckRepository(ref));

    final check = await SharedCheckRepository().tryGet();
    checkState = StateNotifierProvider((ref) {
      return SharedCheckStateNotifier(check);
    });
    checkList = StateNotifierProvider((ref) {
      ref.watch(dioRepository);
      return CheckListStateNotifier([], ref)
        ..clear()
        ..fetch();
    });
  }
}
