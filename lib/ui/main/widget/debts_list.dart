import 'package:check_parser/domain/extentions/int_extentions.dart';
import 'package:flutter/material.dart';

import '../../../data/models/debts/debts.dart';
import '../../../data/models/users.dart';

part 'debt_item.dart';

class DebtsList extends StatelessWidget {
  final Debts debts;

  const DebtsList({super.key, required this.debts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _DebtItem(user: Users.stepa, debt: debts.stepa),
        const Divider(height: 10, thickness: 1),
        _DebtItem(user: Users.valentin, debt: debts.valentin),
        const Divider(height: 10, thickness: 1),
        _DebtItem(user: Users.dima, debt: debts.dima),
        const Divider(height: 10, thickness: 1),
        _DebtItem(user: Users.tham, debt: debts.tham),
        const Divider(height: 10, thickness: 1),
        _DebtItem(user: Users.trong, debt: debts.trong),
        const Spacer(),
        if(!debts.defined) const Text('there are unsorted items'),
      ],
    );
  }
}
