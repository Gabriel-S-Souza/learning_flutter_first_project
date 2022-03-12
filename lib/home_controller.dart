import 'package:flutter/cupertino.dart';
// Vai gerenciar a regra de negócio
class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
          //ValueNotifier com seu valor inicial
          notifier: ValueNotifier(0),
        );

  static HomeController of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<HomeController>()!;

  int get value => notifier!.value;

  increment() {
     notifier!.value++;
  }

  @override
  //o método abaixo basicamente pergunta se ele pode atualizar os filhos
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
