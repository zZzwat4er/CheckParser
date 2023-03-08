import 'package:flutter/material.dart';

class RoundCheckbox extends StatefulWidget {
  final bool isActive;
  final Duration duration;
  final Curve curve;
  final double size;

  const RoundCheckbox({
    super.key,
    required this.isActive,
    this.size = 24,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeInOut,
  });

  @override
  State<RoundCheckbox> createState() => _RoundCheckboxState();
}

class _RoundCheckboxState extends State<RoundCheckbox> {
  late bool isActive;

  @override
  void initState() {
    isActive = widget.isActive;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant RoundCheckbox oldWidget) {
    if (isActive != widget.isActive) {
      setState(() => isActive = widget.isActive);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      curve: widget.curve,
      height: widget.size,
      width: widget.size,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: isActive ? Colors.red : Colors.grey,
        ),
      ),
      child: Center(
        child: AnimatedContainer(
          duration: widget.duration,
          curve: widget.curve,
          height: isActive? widget.size - 8 : 0,
          width: isActive? widget.size - 8 : 0,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
