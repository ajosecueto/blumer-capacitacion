import 'dart:io';

Future<void> main() async {
  // final value = await readValueToConsole();
  // print(value);
  // print("Como te llamas?");
  // printTo(5);
  orderPizza();
  print("Comer snacks");
}

Future<void> orderPizza() async {
  print("Order pizza");
  await Future.delayed(Duration(seconds: 5), () => print("Pizza preparada"));
  print("Empacando la pizza");
}

Future<void> printTo(int n) async {
  for (int i = 1; i < n; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
  print("Termino");
}

Future<String> readValueToConsole() async {
  return stdin.readLineSync();
}
