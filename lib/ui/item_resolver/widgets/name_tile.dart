part of 'payer_picer.dart';

class _NameTile extends StatelessWidget {
  final Users name;
  final bool value;
  final void Function(bool?) onChanged;

  const _NameTile({
    super.key,
    required this.name,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(name.toString())
      ],
    );
  }
}
