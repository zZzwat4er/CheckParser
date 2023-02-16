import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/services.dart';
import 'widget/check.dart';

class CheckList extends ConsumerWidget {
  const CheckList({super.key});

  @override
  Widget build(context, ref) {
    final checkList = ref.watch(ServiceLocator.checkList);
    final checkListNotifyer = ref.read(ServiceLocator.checkList.notifier);

    return ListView.builder(
      itemCount: checkList.length,
      itemBuilder: (context, index) {
        if (index > checkList.length - 10) {
          checkListNotifyer.fetch();
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CheckWidget(check: checkList[index]),
        );
      },
    );
  }
}
