import 'dart:async';
import 'package:flutter/material.dart';
import 'app.dart';
import '../flavors.dart';


FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint("flavoerプリント");
  debugPrint(F.name.toString());
  runApp(const App());
}