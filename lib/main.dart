import 'package:flutter/material.dart';

import 'package:design_flutter/src/pages/scroll_page.dart';
import 'package:design_flutter/src/pages/basico_page.dart';
import 'package:design_flutter/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños en flutter',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll_page': (BuildContext context) => ScrollPage(),
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}
