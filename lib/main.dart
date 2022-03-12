import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // StatelessWidget: Widget sem estado
  const MyApp({Key? key}) : super(key: key);

  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Utilizando o InheritedWidget
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App teste"),
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var i = 0; i < 10; i++) //Adicionando um for para replicar o container
                  Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  margin: const EdgeInsets.all(12),
                ),
              ]
                  ),
          )
      ),
    );
  }
}
