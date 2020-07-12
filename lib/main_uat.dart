import 'package:flutter/material.dart';

import 'config.dart';
import 'my_home.dart';

void main() {
  Config.appFlavor = Flavor.RELEASE;
  runApp(MyApp());
}

