import 'dart:io';

class ValidadorContrasena {
  void validarContrasena() {
    print('=== Validación de Contraseña ===');

    stdout.write('Ingrese una contraseña: ');
    String password = stdin.readLineSync() ?? '';

    if (password.length < 8) {
      print('La contraseña es demasiado corta. Mínimo 8 caracteres.');
    } 
    else if (!password.contains(RegExp(r'[A-Z]'))) {
      print('La contraseña debe contener al menos una letra mayúscula.');
    } 
    else if (!password.contains(RegExp(r'[0-9]'))) {
      print('La contraseña debe contener al menos un número.');
    } 
    else {
      print('Contraseña válida y segura.');
    }
  }
}

void main() => ValidadorContrasena().validarContrasena();