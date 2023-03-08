import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppCheckbox extends HookWidget {
  final bool isActive;
  final Duration duration;
  final Curve curve;
  final double size;

  const AppCheckbox({
    super.key,
    required this.isActive,
    this.size = 24,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeInOut,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: duration);
    if (isActive) {
      controller.forward();
    } else {
      controller.reverse();
    }
    return AnimatedContainer(
      duration: duration,
      curve: curve,
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: isActive ? Colors.red : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: SizedBox(
          height: size - 8,
          width: size - 8,
          child: Center(
            child: SizeTransition(
              sizeFactor: CurvedAnimation(parent: controller, curve: curve),
              axisAlignment: 0,
              axis: Axis.horizontal,
              child: Icon(
                Icons.check,
                color: Colors.red,
                size: size - 8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
