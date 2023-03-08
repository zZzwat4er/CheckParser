import 'package:check_parser/data/models/check/check.dart';
import 'package:check_parser/domain/extentions/int_extentions.dart';
import 'package:check_parser/domain/extentions/string_extentions.dart';
import 'package:flutter/material.dart';

import '../../../data/models/item/item.dart';

part 'item.dart';

class CheckWidget extends StatelessWidget {
  final Check check;
  const CheckWidget({super.key, required this.check});


  @override
  Widget build(BuildContext context) {
    final name = check.user.name;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${name.isEmpty? check.user : name}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Text(check.totalSum.toRub)
          ],
        ),
        const Divider(),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: check.items.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: _ItemTile(
              item: check.items[index],
            ),
          ),
        ),
      ],
    );
  }
}
