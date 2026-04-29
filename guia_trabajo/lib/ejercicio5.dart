import 'dart:io';

class Tienda {
  void procesarCompra() {
    stdout.write('Precio del producto: ');
    double? precio = double.tryParse(stdin.readLineSync() ?? '');

    if (precio == null || precio <= 0) {
      print('Precio inválido.');
      return;
    }

    double descuento = precio * 0.15;
    double total = precio - descuento;

    print('Total a pagar: \$${total.toStringAsFixed(2)}');
  }
}

void main() => Tienda().procesarCompra();