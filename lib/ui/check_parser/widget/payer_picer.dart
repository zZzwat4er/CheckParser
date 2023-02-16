import 'package:flutter/material.dart';

import '../../../data/models/users.dart';

part 'name_tile.dart';

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
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _names.length,
      itemBuilder: (context, index) => _NameTile(
        name: _names[index],
        onChanged: (value) {
          setState(() {
            currentUser = _names[index];
          });
          widget.onChanged(_names[index]);
        },
        value: currentUser == _names[index],
      ),
    );
  }
}
