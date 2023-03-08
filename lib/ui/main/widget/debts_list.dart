import 'package:check_parser/domain/extentions/int_extentions.dart';
import 'package:flutter/material.dart';

import '../../../data/models/debts/debts.dart';

class DebtsList extends StatelessWidget {
  final Debts debts;

  const DebtsList({super.key, required this.debts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            children: [
              const TextSpan(text: 'Stepa: '),
              TextSpan(text: debts.stepa.toRub),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            children: [
              const TextSpan(text: 'Valentin: '),
              TextSpan(text: debts.valentin.toRub),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            children: [
              const TextSpan(text: 'Dima: '),
              TextSpan(text: debts.dima.toRub),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            children: [
              const TextSpan(text: 'Trong: '),
              TextSpan(text: debts.trong.toRub),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            children: [
              const TextSpan(text: 'Tham: '),
              TextSpan(text: debts.tham.toRub),
            ],
          ),
        ),
      ],
    );
  }
}
