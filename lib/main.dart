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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();
  final List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learning Flutter - List App"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: textController,
                  )),
                  IconButton(
                    onPressed: () {
                      final String text =
                          textController.text; //Pegando o texto do TextField
                      setState(() {
                        list.add(text);
                      });
                      textController.clear();
                    },
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  //Neste argumento funciona o loop
                  final item = list[index];

                  return ListTile(
                    title: Text(item),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
