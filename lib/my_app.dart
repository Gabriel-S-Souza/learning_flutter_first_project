import 'package:flutter/material.dart';
import 'package:flutter_teste_1/home_controller.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  // StatelessWidget: Widget sem estado
  const MyApp({Key? key}) : super(key: key);

  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Utilizando o InheritedWidget
      home: HomeController(child: const MyHomePage()),
    );
  }
}