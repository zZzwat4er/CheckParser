import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/services.dart';

void showSnackBar(Ref ref, String text) =>
    ref.read(ServiceLocator.massangerKey).currentState?.showSnackBar(
          SnackBar(
            elevation: 20,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            duration: const Duration(milliseconds: 1500),
            content: Center(child: Text(text)),
          ),
        );
