import 'package:check_parser/data/models/check/server_check.dart';
import 'package:check_parser/domain/extentions/int_extentions.dart';
import 'package:check_parser/domain/extentions/string_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'item_list.dart';

class CheckWidget extends StatefulWidget {
  final ServerCheck check;
  const CheckWidget({super.key, required this.check});

  @override
  State<CheckWidget> createState() => CheckWidgetState();
}

class CheckWidgetState extends State<CheckWidget>
    with TickerProviderStateMixin {
  bool isExtanded = false;
  late final controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late final _animation = CurvedAnimation(
    parent: controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    controller.dispose();
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final name = widget.check.shopName.name;
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        setState(() => isExtanded = !isExtanded);
        isExtanded ? controller.forward() : controller.reverse();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Text(
                      name.isNotEmpty ? name : widget.check.shopName,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Text(widget.check.items
                      .fold<int>(
                          0,
                          (previousValue, element) =>
                              previousValue + element.sum)
                      .toRub),
                ],
              ),
              SizeTransition(
                sizeFactor: _animation,
                axis: Axis.vertical,
                axisAlignment: -1,
                child: Column(
                  children: [
                    const Divider(
                      height: 10,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      child: ItemList(
                        items: widget.check.items,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
