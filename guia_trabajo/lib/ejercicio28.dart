import 'dart:io';

class CajeroAutomatico {
  void simularCajero() {
    print('=== Simulador de Cajero Automático ===');
    
    double saldo = 5000.00;  // Saldo inicial

    while (true) {
      print('\n--- Menú del Cajero ---');
      print('1. Consultar saldo');
      print('2. Retirar dinero');
      print('3. Salir');
      stdout.write('Seleccione una opción: ');

      String? opcion = stdin.readLineSync();

      if (opcion == '1') {
        print('Su saldo actual es: \$${saldo.toStringAsFixed(2)}');
      } 
      else if (opcion == '2') {
        stdout.write('Ingrese la cantidad a retirar: ');
        double? retiro = double.tryParse(stdin.readLineSync() ?? '');

        if (retiro == null || retiro <= 0) {
          print('Cantidad inválida.');
        } 
        else if (retiro > saldo) {
          print('Saldo insuficiente.');
        } 
        else {
          saldo -= retiro;
          print('Retiro exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
        }
      } 
      else if (opcion == '3') {
        print('Gracias por usar el cajero. ¡Hasta pronto!');
        break;
      } 
      else {
        print('Opción inválida. Intente nuevamente.');
      }
    }
  }
}

void main() => CajeroAutomatico().simularCajero();