import 'flavors.dart';

import 'main.dart' as runner;
import 'package:flutter/material.dart';

Future<void> main() async {
  F.appFlavor = Flavor.staging;
  await runner.main();
}
