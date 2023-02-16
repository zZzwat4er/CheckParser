import 'package:check_parser/data/repository/local_ip_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/ip/ip.dart';

class IpStateNotifier extends StateNotifier<IP?>{
  
  static final _ipRegExp = RegExp(r'((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)');
  final LocalIpRepository repo;

  IpStateNotifier(super.state, this.repo);

  void setIp(String ip){
    final match = _ipRegExp.firstMatch(ip);
    if(match != null){
      repo.add(IP(match[0]));
    }
  }
  
  void updateState(IP? ip) => state = ip;

}