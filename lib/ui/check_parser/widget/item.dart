part of 'check.dart';

class _ItemTile extends StatelessWidget {
  final Item item;
  const _ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              if (item.price != null && item.quantity != null)
                Text(
                  '${item.price! / 100 }x${item.quantity}',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
            ],
          ),
        ),
        const SizedBox(width: 20),
        Text(
          '${item.sum / 100}',
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
