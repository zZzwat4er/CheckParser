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
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(text: 'Stepa: '),
              TextSpan(text: debts.stepa.toString()),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(text: 'Valentin: '),
              TextSpan(text: debts.valentin.toString()),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(text: 'Dima: '),
              TextSpan(text: debts.dima.toString()),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(text: 'Trong: '),
              TextSpan(text: debts.trong.toString()),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(text: 'Tham: '),
              TextSpan(text: debts.tham.toString()),
            ],
          ),
        ),
      ],
    );
  }
}
