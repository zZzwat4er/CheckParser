part of 'debts_list.dart';

class _DebtItem extends StatelessWidget {
  final Users user;
  final int debt;
  const _DebtItem({
    required this.user,
    required this.debt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          user.name,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          debt.toRub,
          style: TextStyle(
            fontSize: 20,
            color: debt > 0 ? Colors.green : Colors.red,
          ),
        )
      ],
    );
  }
}
