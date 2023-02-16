import 'package:check_parser/data/models/check/server_check.dart';
import 'package:flutter/material.dart';

import 'item_list.dart';

class CheckWidget extends StatefulWidget {
  final ServerCheck check;
  const CheckWidget({super.key, required this.check});

  @override
  State<CheckWidget> createState() => CheckWidgetState();
}

class CheckWidgetState extends State<CheckWidget> {
  bool isExtanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isExtanded = !isExtanded),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Text(
                  widget.check.shopName,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
          AnimatedContainer(
            height: isExtanded ? null : 0,
            duration: const Duration(milliseconds: 500),
            child: ItemList(
              items: widget.check.items,
            ),
          ),
        ],
      ),
    );
  }
}
