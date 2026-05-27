// Clase base Vehiculo
class Vehiculo {
  String _marca;
  String _modelo;
  int _anio;

  // Constructor
  Vehiculo(this._marca, this._modelo, this._anio);

  // Getters
  String get marca => _marca;
  String get modelo => _modelo;
  int get anio => _anio;

  // Setters
  set marca(String marca) => _marca = marca;
  set modelo(String modelo) => _modelo = modelo;
  set anio(int anio) => _anio = anio;

  void mostrarDetalles() {
    print("Vehículo: $_marca $_modelo ($_anio)");
  }
}

// Clase Auto
class Auto extends Vehiculo {
  int _numeroPuertas;

  Auto(String marca, String modelo, int anio, this._numeroPuertas)
      : super(marca, modelo, anio);

  int get numeroPuertas => _numeroPuertas;
  set numeroPuertas(int numeroPuertas) =>
      _numeroPuertas = numeroPuertas;

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print("Número de puertas: $_numeroPuertas");
  }
}

// Clase Camion
class Camion extends Vehiculo {
  double _capacidadCarga;

  Camion(String marca, String modelo, int anio, this._capacidadCarga)
      : super(marca, modelo, anio);

  double get capacidadCarga => _capacidadCarga;
  set capacidadCarga(double capacidadCarga) =>
      _capacidadCarga = capacidadCarga;

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print("Capacidad de carga: $_capacidadCarga toneladas");
  }
}

// Clase Motocicleta (Desafío)
class Motocicleta extends Vehiculo {
  String _tipo;

  Motocicleta(String marca, String modelo, int anio, this._tipo)
      : super(marca, modelo, anio);

  String get tipo => _tipo;
  set tipo(String tipo) => _tipo = tipo;

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print("Tipo: $_tipo");
  }
}

// Función principal
void main() {
  Auto miAuto = Auto("Toyota", "Corolla", 2020, 4);
  Camion miCamion = Camion("Volvo", "FH16", 2018, 20.5);
  Motocicleta miMoto =
      Motocicleta("Yamaha", "R6", 2022, "Deportiva");

  print("Detalles del Auto:");
  miAuto.mostrarDetalles();

  print("\nDetalles del Camión:");
  miCamion.mostrarDetalles();

  print("\nDetalles de la Motocicleta:");
  miMoto.mostrarDetalles();
}