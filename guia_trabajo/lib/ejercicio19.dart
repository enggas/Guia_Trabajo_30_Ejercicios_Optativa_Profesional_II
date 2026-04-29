import 'dart:io';

class GeneradorEmail {
  void generarEmail() {
    print('=== Generador de Email ===');

    stdout.write('Ingrese su nombre completo: ');
    String nombreCompleto = stdin.readLineSync() ?? '';

    if (nombreCompleto.trim().isEmpty) {
      print('Error: Ingrese un nombre válido.');
      return;
    }

    // Convertir a minúsculas y separar palabras
    List<String> partes = nombreCompleto.toLowerCase().trim().split(' ');
    
    String email = '';
    if (partes.length >= 2) {
      email = '${partes[0]}.${partes[1]}@empresa.com';
    } else {
      email = '${partes[0]}@empresa.com';
    }

    print('Email generado: $email');
  }
}

void main() => GeneradorEmail().generarEmail();