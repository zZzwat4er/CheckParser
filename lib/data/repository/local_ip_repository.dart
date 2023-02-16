import 'package:hive/hive.dart';

import '../models/ip/ip.dart';

class LocalIpRepository{

  final Box<IP> _box;
  static const _key = 'ip';

  const LocalIpRepository(this._box);

  void listen(void Function(IP? ip) onUpdate){
    _box.watch(key: _key).listen((event) {
      final ret = event.value;
      if (ret is IP){
        onUpdate(ret);
      }
      else{
        onUpdate(null);
      }
    });
  }

  void add(IP ip){
    _box.put(_key, ip);
  }

  IP? get(){
    return _box.get(_key);
  }

  void delete(){
    _box.delete(_key);
  }

}