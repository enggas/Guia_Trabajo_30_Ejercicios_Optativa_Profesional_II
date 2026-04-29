import 'dart:io';

class ValidacionUsuario {
  void login() {
    print('=== Validación de Usuario ===');

    stdout.write('Usuario: ');
    String usuario = stdin.readLineSync() ?? '';

    stdout.write('Contraseña: ');
    String password = stdin.readLineSync() ?? '';

    // Credenciales de ejemplo
    if (usuario == 'admin' && password == '1234') {
      print('¡Bienvenido, $usuario!');
    } else {
      print('Usuario o contraseña incorrectos.');
    }
  }
}

void main() => ValidacionUsuario().login();