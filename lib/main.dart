import 'package:flutter/material.dart';
import 'package:flutter_hero/details.dart';
import 'package:flutter_hero/util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hero',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HeroPage(),
    );
  }
}

class HeroPage extends StatelessWidget {
  void changeRoute(BuildContext context, String drink) {
    switch (drink) {
      case 'coffee':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(Util.COFFEE_URL, drink),
          ),
        );
        break;
      case 'cappuccino':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(Util.CAPPUCCINO_URL, drink),
          ),
        );
        break;
      case 'tea':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(Util.TEA_URL, drink),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Hero'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Util.buildHeroIcon(Util.COFFEE_URL, 'coffee'),
              onTap: () {
                changeRoute(context, 'coffee');
              },
            ),
            GestureDetector(
              child: Util.buildHeroIcon(Util.CAPPUCCINO_URL, 'cappuccino'),
              onTap: () {
                changeRoute(context, 'cappuccino');
              },
            ),
            GestureDetector(
              child: Util.buildHeroIcon(Util.TEA_URL, 'tea'),
              onTap: () {
                changeRoute(context, 'tea');
              },
            ),
          ],
        ),
      ),
    );
  }
}
