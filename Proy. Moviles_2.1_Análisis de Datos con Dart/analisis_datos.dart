// 1️⃣ IMPORTACIONES
import 'dart:convert';
import 'dart:io';

// 2️⃣ CLASE Registro
class Registro {
  String nombre;
  int edad;
  double salario;

  Registro({
    required this.nombre,
    required this.edad,
    required this.salario,
  });

  factory Registro.fromJson(Map<String, dynamic> json) {
    return Registro(
      nombre: json['nombre'] ?? '',
      edad: json['edad'] ?? 0,
      salario: (json['salario'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'edad': edad,
      'salario': salario,
    };
  }

  @override
  String toString() {
    return 'Nombre: $nombre | Edad: $edad | Salario: \$${salario.toStringAsFixed(2)}';
  }
}

// 3️⃣ FUNCIONES
List<Registro> cargarDatos(String ruta) {
  final file = File(ruta);
  final contenido = file.readAsStringSync();
  final List<dynamic> datosJson = jsonDecode(contenido);

  return datosJson.map((json) => Registro.fromJson(json)).toList();
}

void buscarPorNombre(List<Registro> lista, String nombre) {
  final resultados = lista
      .where((r) => r.nombre.toLowerCase() == nombre.toLowerCase())
      .toList();

  if (resultados.isEmpty) {
    print("No se encontraron resultados.");
  } else {
    resultados.forEach(print);
  }
}

void filtrarPorEdad(List<Registro> lista, int edadMinima) {
  final resultados =
      lista.where((r) => r.edad >= edadMinima).toList();

  resultados.forEach(print);
}

void mostrarEstadisticas(List<Registro> lista) {
  if (lista.isEmpty) {
    print("No hay datos.");
    return;
  }

  double promedioSalario =
      lista.map((r) => r.salario).reduce((a, b) => a + b) / lista.length;

  int edadMin = lista.map((r) => r.edad).reduce((a, b) => a < b ? a : b);
  int edadMax = lista.map((r) => r.edad).reduce((a, b) => a > b ? a : b);

  print("\n--- Estadísticas ---");
  print("Cantidad de registros: ${lista.length}");
  print("Promedio salario: \$${promedioSalario.toStringAsFixed(2)}");
  print("Edad mínima: $edadMin");
  print("Edad máxima: $edadMax");
}

void exportarResumen(List<Registro> lista) {
  double promedioSalario =
      lista.map((r) => r.salario).reduce((a, b) => a + b) / lista.length;

  Map<String, dynamic> resumen = {
    "total_registros": lista.length,
    "promedio_salario": promedioSalario,
  };

  File('resumen.json')
      .writeAsStringSync(JsonEncoder.withIndent('  ').convert(resumen));

  print("Resumen exportado correctamente.");
}

// 4️⃣ MAIN (SIEMPRE VA AL FINAL)
void main() {
  List<Registro> registros = cargarDatos('datos.json');

  while (true) {
    print("\n--- MENÚ ---");
    print("1. Mostrar registros");
    print("2. Buscar por nombre");
    print("3. Filtrar por edad");
    print("4. Ver estadísticas");
    print("5. Exportar resumen");
    print("6. Salir");

    stdout.write("Seleccione una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        registros.forEach(print);
        break;
      case '2':
        stdout.write("Ingrese nombre: ");
        String? nombre = stdin.readLineSync();
        if (nombre != null) {
          buscarPorNombre(registros, nombre);
        }
        break;
      case '3':
        stdout.write("Edad mínima: ");
        int? edad = int.tryParse(stdin.readLineSync() ?? '');
        if (edad != null) {
          filtrarPorEdad(registros, edad);
        }
        break;
      case '4':
        mostrarEstadisticas(registros);
        break;
      case '5':
        exportarResumen(registros);
        break;
      case '6':
        print("Saliendo...");
        return;
      default:
        print("Opción inválida");
    }
  }
}