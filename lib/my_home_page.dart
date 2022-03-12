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

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Gabriel"),
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//           child: Text(
//           "Você clicou no botão $counter vezes",
//           textScaleFactor: 2,
//         )
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//         backgroundColor: Colors.amber,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
