import 'package:check_parser/data/models/users.dart';
import 'package:check_parser/ui/widgets/round_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserButton extends StatefulWidget {
  final Duration duration;
  final Curve curve;
  final bool isActive;
  final Users user;
  final void Function(bool value) onChanged;
  const UserButton({
    super.key,
    required this.isActive,
    required this.user,
    required this.onChanged,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeInOut,
  });

  @override
  State<UserButton> createState() => _UserButtonState();
}

class _UserButtonState extends State<UserButton> {
  late bool isActive;

  @override
  void initState() {
    isActive = widget.isActive;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserButton oldWidget) {
    if (isActive != widget.isActive) {
      setState(() => isActive = widget.isActive);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        widget.onChanged(true);
        setState(() {
          isActive = true;
        });
      },
      child: AnimatedContainer(
        duration: widget.duration,
        curve: widget.curve,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundCheckbox(
              isActive: isActive,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                widget.user.toString(),
                style: TextStyle(fontSize: 21),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
