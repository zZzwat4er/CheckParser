import 'package:check_parser/data/models/item/server_item.dart';
import 'package:check_parser/domain/extentions/int_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemList extends StatelessWidget {
  final List<ServerItem> items;

  const ItemList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Text(items[index].name)),
          const SizedBox(width: 10),
          Text(items[index].sum.toRub),
        ],
      ),
      separatorBuilder: (context, index) => const Divider(
        height: 5,
        thickness: 1,
      ),
    );
  }
}
