
import 'package:flutter/material.dart';

enum Flavor {
  DEVELOPMENT,
  RELEASE,
}

class Config {

  static Flavor appFlavor;

  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.RELEASE:
        return '生产环境';
      case Flavor.DEVELOPMENT:
      default:
        return '开发环境';
    }
  }

  static Icon get helloIcon {
    switch (appFlavor) {
      case Flavor.RELEASE:
        return new Icon(Icons.new_releases);
      case Flavor.DEVELOPMENT:
      default:
        return new Icon(Icons.developer_mode);
    }
  }
}