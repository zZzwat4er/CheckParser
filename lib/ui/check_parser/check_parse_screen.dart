import 'package:check_parser/domain/providers/services.dart';
import 'package:check_parser/ui/check_parser/widget/check.dart';
import 'package:check_parser/ui/check_parser/widget/payer_picer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/check/check.dart';
import '../../data/models/users.dart';

class CheckParseScreen extends ConsumerStatefulWidget {
  final Check check;

  const CheckParseScreen({super.key, required this.check});

  @override
  ConsumerState<CheckParseScreen> createState() => _CheckParseScreenState();
}

class _CheckParseScreenState extends ConsumerState<CheckParseScreen> {
  late final Check check;
  Users? paidBy;

  @override
  void initState() {
    super.initState();
    check = widget.check;
  }

  @override
  Widget build(context) {
    final checkRepo = ref.read(ServiceLocator.checkList.notifier);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Visibility(
            visible: paidBy != null,
            child: GestureDetector(
              onTap: () async {
                await checkRepo.sendCheck(check.copyWith(PaidBy: paidBy));
                checkRepo
                  ..clear()
                  ..fetch();
                ref.read(ServiceLocator.router).pop();
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.check),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: PayerPicker(onChanged: (user) {
                setState(() => paidBy = user);
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CheckWidget(check: check),
            ),
          ],
        ),
      ),
    );
  }
}
