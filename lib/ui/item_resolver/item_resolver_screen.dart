import 'package:check_parser/domain/providers/provider.dart';
import 'package:check_parser/ui/item_resolver/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/users.dart';
import 'widgets/payer_picer.dart';

class ItemResolverScreen extends ConsumerStatefulWidget {
  const ItemResolverScreen({super.key});

  @override
  ConsumerState<ItemResolverScreen> createState() => ItemResolverScreenState();
}

class ItemResolverScreenState extends ConsumerState<ItemResolverScreen> {
  Set<Users> debters = {};

  @override
  Widget build(context) {
    final repo = ref.read(ServiceLocator.itemRepository);
    final currentItem = ref.watch(ServiceLocator.unsortedItem);
    final currentItemNotifyer = ref.watch(ServiceLocator.unsortedItem.notifier);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Visibility(
            visible: currentItem != null,
            child: GestureDetector(
              onTap: () async {
                final res =
                    await repo.sendSortedItem(currentItem!.id!, debters);
                currentItemNotifyer.updateState(res);
              },
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.check),
              ),
            ),
          )
        ],
      ),
      body: (currentItem != null)
          ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ItemWidget(item: currentItem),
                  PayerPicker(
                    onChanged: (users) {
                      setState(() {
                        debters = users;
                      });
                    },
                  ),
                ],
              ),
            )
          : const Center(
              child: Text(
                'There is no unsorted items',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
    );
  }
}
