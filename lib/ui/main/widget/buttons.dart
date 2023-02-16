import 'package:check_parser/domain/providers/services.dart';
import 'package:check_parser/domain/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebtButtons extends ConsumerWidget {
  const DebtButtons({super.key});

  @override
  Widget build(context, ref) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(ServiceLocator.router).goto(AppRoutes.itemResolver, push: true);
                },
                child: Container(
                  width: double.infinity,
                  child: const Text(
                    'sort checks',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
