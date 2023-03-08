import 'package:check_parser/ui/widgets/user_button.dart';
import 'package:flutter/material.dart';

import '../../../data/models/users.dart';

class PayerPicker extends StatefulWidget {
  final void Function(Users) onChanged;
  const PayerPicker({super.key, required this.onChanged});

  @override
  State<PayerPicker> createState() => _PayerPickerState();
}

class _PayerPickerState extends State<PayerPicker> {
  static const _names = [
    Users.stepa,
    Users.dima,
    Users.valentin,
    Users.tham,
    Users.trong
  ];

  Users? currentUser;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _names.length,
      itemBuilder: (context, index) => UserButton(
        user: _names[index],
        onChanged: (value) {
          setState(() {
            currentUser = _names[index];
          });
          widget.onChanged(_names[index]);
        },
        isActive: currentUser == _names[index],
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
