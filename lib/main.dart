import 'package:flutter/material.dart';

import 'app.dart';
import 'domain/providers/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.init();
  runApp(const App());
}