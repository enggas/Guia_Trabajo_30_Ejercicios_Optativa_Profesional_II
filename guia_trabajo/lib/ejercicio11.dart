import 'dart:io';

class SumaNaturales {
  void calcularSuma() {
    print('=== Suma de Números Naturales ===');

    stdout.write('Ingrese un número n: ');
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    if (n == null || n <= 0) {
      print('Error: Ingrese un número positivo.');
      return;
    }

    int suma = 0;
    for (int i = 1; i <= n; i++) {
      suma += i;
    }

    print('La suma de los primeros $n números naturales es: $suma');
    // Fórmula matemática: n*(n+1)/2
    print('Usando fórmula: ${n * (n + 1) ~/ 2}');
  }
}

void main() => SumaNaturales().calcularSuma();