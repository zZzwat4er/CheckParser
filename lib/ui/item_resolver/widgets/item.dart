import 'package:check_parser/domain/extentions/int_extentions.dart';
import 'package:flutter/material.dart';

import '../../../data/models/item/server_item.dart';

class ItemWidget extends StatelessWidget {
  final ServerItem item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          item.sum.toRub,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          item.paidBy.toString(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
