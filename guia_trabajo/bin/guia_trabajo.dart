import 'dart:io';

// ==================== IMPORTS DE TODOS LOS EJERCICIOS ====================

import '../lib/guia_trabajo.dart';
import '../lib/ejercicio2.dart';
import '../lib/ejercicio3.dart';
import '../lib/ejercicio4.dart';
import '../lib/ejercicio5.dart';
import '../lib/ejercicio6.dart';
import '../lib/ejercicio7.dart';
import '../lib/ejercicio8.dart';
import '../lib/ejercicio9.dart';
import '../lib/ejercicio10.dart';
import '../lib/ejercicio11.dart';
import '../lib/ejercicio12.dart';
import '../lib/ejercicio13.dart';
import '../lib/ejercicio14.dart';
import '../lib/ejercicio15.dart';
import '../lib/ejercicio16.dart';
import '../lib/ejercicio17.dart';
import '../lib/ejercicio18.dart';
import '../lib/ejercicio19.dart';
import '../lib/ejercicio20.dart';
import '../lib/ejercicio21.dart';
import '../lib/ejercicio22.dart';
import '../lib/ejercicio23.dart';
import '../lib/ejercicio24.dart';
import '../lib/ejercicio25.dart';
import '../lib/ejercicio26.dart';
import '../lib/ejercicio27.dart';
import '../lib/ejercicio28.dart';
import '../lib/ejercicio29.dart';
import '../lib/ejercicio30.dart';

void main() {
  while (true) {
    print('\n' + '=' * 60);
    print('     GUÍA DE ESTUDIO - PROGRAMACIÓN EN DART (CONSOLA)');
    print('               30 Ejercicios - Optativa Profesional II');
    print('=' * 60);
    print('Seleccione el número del ejercicio que desea ejecutar:');
    print('0  → Salir del programa');

    stdout.write('\nOpción → ');

    String? input = stdin.readLineSync();
    int? opcion = int.tryParse(input ?? '');

    if (opcion == 0) {
      print('\n¡Gracias por usar la Guía de Dart! ¡Hasta pronto!');
      break;
    }

    print('\n' + '-' * 50);

    switch (opcion) {
      case 1:
        print('Ejercicio 1 → Calculadora de Área de Círculo');
        Circulo().calcularArea();
        break;

      case 2:
        print('Ejercicio 2 → Conversor de Temperatura');
        Termometro().convertirCelsiusAFahrenheit();
        break;

      case 3:
        print('Ejercicio 3 → Verificador de Paridad');
        MatematicaBasica().verificarParidad();
        break;

      case 4:
        print('Ejercicio 4 → Cálculo de Edad');
        Persona().obtenerEdad();
        break;

      case 5:
        print('Ejercicio 5 → Sistema de Descuentos');
        Tienda().procesarCompra();
        break;

      case 6:
        print('Ejercicio 6 → Promedio de 3 Notas');
        PromedioNotas().calcularPromedio();
        break;

      case 7:
        print('Ejercicio 7 → Calculadora Básica');
        CalculadoraBasica().calcular();
        break;

      case 8:
        print('Ejercicio 8 → Validación de Usuario');
        ValidacionUsuario().login();
        break;

      case 9:
        print('Ejercicio 9 → Día de la Semana');
        DiaSemana().obtenerDia();
        break;

      case 10:
        print('Ejercicio 10 → Factorial de un Número');
        Factorial().calcularFactorial();
        break;

      case 11:
        print('Ejercicio 11 → Suma de Números Naturales');
        SumaNaturales().calcularSuma();
        break;

      case 12:
        print('Ejercicio 12 → Tabla de Multiplicar');
        TablaMultiplicar().mostrarTabla();
        break;

      case 13:
        print('Ejercicio 13 → Inversión de Cadena');
        InversionCadena().invertirCadena();
        break;

      case 14:
        print('Ejercicio 14 → Contador de Vocales');
        ContadorVocales().contarVocales();
        break;

      case 15:
        print('Ejercicio 15 → Conversor de Moneda (USD → Córdoba)');
        ConversorMoneda().convertirMoneda();
        break;

      case 16:
        print('Ejercicio 16 → Cálculo de Salario Neto');
        Nomina().calcularSalario();
        break;

      case 17:
        print('Ejercicio 17 → Clasificación de IMC');
        IMC().calcularIMC();
        break;

      case 18:
        print('Ejercicio 18 → Número Mayor de Tres');
        NumeroMayor().encontrarMayor();
        break;

      case 19:
        print('Ejercicio 19 → Generador de Email');
        GeneradorEmail().generarEmail();
        break;

      case 20:
        print('Ejercicio 20 → Validación de Contraseña');
        ValidadorContrasena().validarContrasena();
        break;

      case 21:
        print('Ejercicio 21 → Cálculo de Interés Simple');
        InteresSimple().calcularInteres();
        break;

      case 22:
        print('Ejercicio 22 → Días transcurridos en el año');
        DiasEnElAnio().calcularDias();
        break;

      case 23:
        print('Ejercicio 23 → Lista de Tareas (To-Do)');
        ListaTareas().gestionarTareas();
        break;

      case 24:
        print('Ejercicio 24 → Buscador de Elementos en Lista');
        BuscadorElementos().buscarElemento();
        break;

      case 25:
        print('Ejercicio 25 → Conversor de Minutos a Horas');
        ConversorMinutos().convertirMinutosAHoras();
        break;

      case 26:
        print('Ejercicio 26 → Calculadora de Hipotenusa');
        Hipotenusa().calcularHipotenusa();
        break;

      case 27:
        print('Ejercicio 27 → Analizador de Texto (Contar palabras)');
        AnalizadorTexto().contarPalabras();
        break;

      case 28:
        print('Ejercicio 28 → Simulador de Cajero Automático');
        CajeroAutomatico().simularCajero();
        break;

      case 29:
        print('Ejercicio 29 → Verificador de Año Bisiesto');
        VerificadorBisiesto().verificarBisiesto();
        break;

      case 30:
        print('Ejercicio 30 → Formateador de Fechas');
        FormateadorFechas().formatearFecha();
        break;

      default:
        print('Opción inválida. Por favor ingrese un número entre 1 y 30.');
    }

    print('\nPresione ENTER para volver al menú principal...');
    stdin.readLineSync();
  }
}