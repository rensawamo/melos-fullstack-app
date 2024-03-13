import 'flavors.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.development;
  debugPrint("flavoerプリント");
  debugPrint(F.name.toString());
  await runner.main();
}
