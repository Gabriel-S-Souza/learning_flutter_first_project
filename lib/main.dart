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
          title: const Text("Learning Flutter"),
          backgroundColor: Colors.amber,
        ),
        body: Center( //Joga o(s) filho(s) p/ o centro
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/gradient-forms.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.5), //Colocando opacidade na cor
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

              ),
              Container(
                color: Colors.orange,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.greenAccent,
                height: 25,
                width: 25,
              ),
            ],
          ),
        )
    );
  }
}
