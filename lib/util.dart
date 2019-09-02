import 'package:flutter/material.dart';

class Util {
  static const String COFFEE_URL = 'http://bit.ly/fl_coffee';
  static const String CAPPUCCINO_URL = 'http://bit.ly/fl_cappuccino';
  static const String TEA_URL = 'http://bit.ly/fl_tea';
  static Widget buildHeroIcon(String path, String tag) {
    return Hero(
      tag: tag,
      child: Container(
        height: 80,
        width: 80,
        child: Image.network(path, fit: BoxFit.cover),
      ),
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.network(path, fit: BoxFit.cover),
      ),
    );
  }
}
