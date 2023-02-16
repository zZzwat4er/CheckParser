import 'package:check_parser/data/models/check/check.dart';
import 'package:flutter/material.dart';

import '../../../data/models/item/item.dart';

part 'item.dart';

class CheckWidget extends StatelessWidget {
  final Check check;
  const CheckWidget({super.key, required this.check});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${check.user}: ${check.totalSum / 100}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
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
