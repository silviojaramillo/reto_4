import 'dart:io';

void main(List<String> args) {
  List<int> resultado = [];
  print("Ingrese un número");
  String? valor = stdin.readLineSync();
  int entero = int.parse(valor.toString());
  String salida = '';
  while (entero % 2 == 1 || entero % 2 == 0) {
    var residuo = entero % 2;
    var cociente = entero ~/ 2;
    if (cociente == 0 && residuo == 1) {
      resultado.add(residuo);
      for (var i = resultado.length - 1; i >= 0; i--) {
        salida = salida + resultado[i].toString();
      }
      print('Este es el resultado de la conversión: $salida');
      exit(200);
    } else if (cociente != 1 && residuo == 1) {
      resultado.add(residuo);
      entero = cociente;
    } else if (cociente != 1 && residuo == 0) {
      resultado.add(residuo);
      entero = cociente;
    } else if (cociente == 1 && residuo == 1) {
      resultado.add(residuo);
      entero = cociente;
    } else if (cociente == 1 && residuo == 0) {
      resultado.add(residuo);
      entero = cociente;
    } else if (cociente != 1 && residuo == 1) {
      resultado.add(residuo);
      entero = cociente;
    }
  }
}
