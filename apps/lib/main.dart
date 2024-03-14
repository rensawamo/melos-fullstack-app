import 'dart:async';
import 'package:flutter/material.dart';
import 'app.dart';
import '../flavors.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint(F.name.toString());
  const envFile = String.fromEnvironment('env');
  await dotenv.load(fileName: envFile);
  runApp(const App());
}