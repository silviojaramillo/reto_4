import 'dart:io';

void main(List<String> args) {
  List<dynamic> resultado = [];
  List<int> valores = [
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
  ];
  List<String> cadena = [
    'binario',
    'ternario',
    'cuaternario',
    'quinario',
    'senario',
    'heptal',
    'octal',
    'nonario',
    'decimal',
    'undecimal',
    'duodecimal',
    'tridecimal',
    'tetradecimal',
    'pentadecimal',
    'hexadecimal',
  ];
  List<String> cadenaInicial = [
    'binario',
    'ternario',
    'cuaternario',
    'quinario',
    'senario',
    'heptal',
    'octal',
    'nonario',
    'decimal',
    'undecimal',
    'duodecimal',
    'tridecimal',
    'tetradecimal',
    'pentadecimal',
    'hexadecimal'
  ];
  dynamic arreglo;
  dynamic valor(residuo) {
    if (residuo == 10) {
      arreglo = 'A';
    } else if (residuo == 11) {
      arreglo = 'B';
    } else if (residuo == 12) {
      arreglo = 'C';
    } else if (residuo == 13) {
      arreglo = 'D';
    } else if (residuo == 14) {
      arreglo = 'E';
    } else if (residuo == 15) {
      arreglo = 'F';
    } else {
      arreglo = residuo;
    }
    return arreglo;
  }

  print("Ingrese un número");
  String? valor1 = stdin.readLineSync();
  print('indique el sistema de numeración al que desea pasar el número');
  String? valor2 = stdin.readLineSync();
  String? valor3 = valor2?.toLowerCase();
  int buscar = cadena.indexOf(valor3.toString());
  int entero = int.parse(valor1.toString());
  int divisor = valores[buscar];
  String salida = '';
  bool condicional = true;
  int cadenita = cadenaInicial.indexOf(valor3.toString());
  cadena.shuffle();
  for (var j = 0; j <= 4; j++) {
    condicional = true;
    if (j != 0) {
      valor3 = cadena[j - 1];
      buscar = cadenaInicial.indexOf(valor3.toString());
      cadenita = cadenaInicial.indexOf(valor3.toString());
      entero = int.parse(valor1.toString());
      divisor = valores[buscar];
    }
    while (condicional) {
      var residuo = entero % divisor;
      var cociente = entero ~/ divisor;
      if (cociente == 0 && residuo < divisor) {
        resultado.add(valor(residuo));
        for (var i = resultado.length - 1; i >= 0; i--) {
          salida = salida + resultado[i].toString();
        }
        print(
            'Este es el resultado de la conversión de $valor1 a ${cadenaInicial[cadenita]} es $salida');
        resultado.clear();
        salida = '';
        condicional = false;
      } else if (cociente != 1 && residuo < divisor) {
        resultado.add(valor(residuo));
        entero = cociente;
      } else if (cociente == 1 && residuo < divisor) {
        resultado.add(valor(residuo));
        entero = cociente;
      } else if (cociente == 1 && residuo == 0) {
        resultado.add(valor(residuo));
        entero = cociente;
      } else if (cociente == 0 && residuo < divisor) {
        resultado.add(valor(residuo));
        entero = cociente;
      }
    }
  }
}
