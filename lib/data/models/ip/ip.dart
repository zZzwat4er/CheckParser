import 'package:hive/hive.dart';

part 'ip.g.dart';

@HiveType(typeId: 0)
class IP {

  const IP(this.ip);

  @HiveField(0)
  final String? ip;
}
