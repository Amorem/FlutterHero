import 'package:flutter/material.dart';
import 'package:flutter_hero/util.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Details extends StatelessWidget {
  Details(this.drinkPath, this.drinkTag);

  final String drinkPath;
  final String drinkTag;

  @override
  Widget build(BuildContext context) {
    timeDilation = 10;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Hero'),
      ),
      body: Center(
        child: Util.buildHeroDestination(drinkPath, drinkTag, width),
      ),
    );
  }
}
