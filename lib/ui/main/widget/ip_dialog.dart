import 'package:check_parser/domain/providers/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IpDialog extends  HookConsumerWidget{
  const IpDialog({super.key});

  @override
  Widget build(context, ref) {
    final textController =
        useTextEditingController(text: ref.read(ServiceLocator.ip)?.ip ?? '');
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('IP'),
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'IP address',
              ),
              onSubmitted: (value) {
                submit(context, value);
              },
            ),
            Row(
              children: [
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    submit(context, textController.text);
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void submit(BuildContext context, String text) {
    Navigator.of(context).pop(text);
  }
}
