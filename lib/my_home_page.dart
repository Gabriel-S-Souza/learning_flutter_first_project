import 'package:flutter/material.dart';
import 'package:flutter_teste_1/home_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Isto busca na árvore o HomeControler. Toda vez que o notifier.value for alterdo,
    // devido ao dependOnInherited... , o retorno deste método build será atualizado
    // automaticamente, o que confere reatividade a este Widget. Um controle de estado está sendo feito
    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gabriel"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Text(
        "Você clicou no botão ${controller.value} vezes",
        textScaleFactor: 2,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}