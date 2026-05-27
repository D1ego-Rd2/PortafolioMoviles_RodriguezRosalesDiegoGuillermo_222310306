# 🚀 Lección — La 1er Aplicación de Flutter

## 📚 Información Académica

| Dato | Información |
|------|-------------|
| Alumno | Rodriguez Rosales Diego Guillermo |
| No. Control | 222310306 |
| Docente | Jesús Salas Marín |
| Materia | Desarrollo de Aplicaciones para Dispositivos Móviles |
| Clave | 4Y8A |
| Fecha | 11-Mayo-2026 |

---

# 📖 Introducción

En esta práctica se desarrolló una aplicación utilizando Flutter, el kit de herramientas de interfaz de usuario de Google para crear aplicaciones móviles, web y de escritorio.

---

# ⚙️ Configuración del Entorno

## ✅ Requisitos

- Flutter instalado
- Visual Studio Code
- Windows

---

# 📂 Creación del Proyecto

## 1️⃣ Crear nuevo proyecto Flutter

Abrimos el buscador de comandos con:

```txt
Ctrl + Shift + P
```

Buscamos:

```txt
Flutter: New Project
```

y seleccionamos:

```txt
Application
```

---

## 2️⃣ Seleccionar ubicación

Elegimos la carpeta donde se almacenará el proyecto.

---

## 3️⃣ Nombre del proyecto

```txt
leccion_app
```

---

# 📄 Configuración de Archivos

## 📌 pubspec.yaml

Se modificó el archivo:

```txt
pubspec.yaml
```

para agregar configuraciones necesarias del proyecto.

---

## 📌 analysis_options.yaml

También se modificó:

```txt
analysis_options.yaml
```

para personalizar reglas y configuraciones de análisis.

---

## 📌 main.dart

Archivo principal de la aplicación.

### ✅ Función

- Iniciar Flutter
- Ejecutar la aplicación
- Construir la interfaz principal

---

# 🔘 Capítulo 4 — Agregar un Botón

## 1️⃣ Seleccionar dispositivo

En la barra inferior de VS Code seleccionamos:

```txt
Windows (desktop)
```

---

## 2️⃣ Ejecutar aplicación

Abrimos la terminal y ejecutamos la depuración.

### 💻 Comando alternativo

```bash
flutter run lib/main.dart
```

---

## 3️⃣ Modificar interfaz

Se agregaron widgets y elementos de texto dinámicos.

---

## 🧩 Clase `MyApp`

Se agregó la clase:

```dart
MyApp extends StatelessWidget
```

---

## 🔄 Clase `MyAppState`

Se implementó:

```dart
ChangeNotifier
```

para manejar el estado de la aplicación.

---

## 🏠 Widget `MyHomePage`

### ✅ Función

- Actualizar interfaz
- Mostrar widgets dinámicos
- Administrar estado actual

---

## 🔁 Método `getNext()`

Genera palabras aleatorias y actualiza la interfaz utilizando:

```dart
notifyListeners()
```

---

# 🎨 Capítulo 5 — Mejorar la Interfaz

## 🃏 Widget `BigCard`

Se refactorizó el widget `Text` utilizando:

```txt
Extract Widget
```

para crear una tarjeta personalizada.

---

## 🎨 Personalización

Se aplicaron:

- Padding
- Card
- ColorScheme
- TextTheme

---

## 📱 Mejoras realizadas

- Mejor diseño visual
- Centrado de elementos
- Mejor accesibilidad
- Compatibilidad con lectores de pantalla

---

# ❤️ Capítulo 6 — Agregar Funcionalidad

## 🔘 Botones Interactivos

Se agregaron botones usando:

```dart
ElevatedButton.icon()
```

---

## ⭐ Funciones implementadas

- Agregar favoritos
- Cambiar iconos dinámicamente
- Separación visual con `SizedBox`

---

# 🧭 Capítulo 7 — Agregar NavigationRail

Se implementó un menú lateral utilizando:

```dart
NavigationRail
```

---

## 📌 Funcionalidades

- Navegación entre páginas
- Manejo dinámico de estado
- Adaptación responsive

---

## 🔄 StatefulWidget

La clase `MyHomePage` fue convertida en:

```dart
StatefulWidget
```

para controlar:

```dart
selectedIndex
```

---

# 📄 Capítulo 8 — Página de Favoritos

## ⭐ FavoritesPage

Nueva página encargada de:

- Mostrar favoritos
- Listar elementos guardados
- Mostrar mensaje cuando no existan favoritos

---

# 🛠️ Tecnologías Utilizadas

- Flutter
- Dart
- Provider
- Visual Studio Code
- Material Design

---

# 📂 Estructura General

```txt
leccion_app/
│
├── lib/
│   ├── main.dart
│   └── widgets/
│
├── pubspec.yaml
├── analysis_options.yaml
│
└── assets/
```

---

# ▶️ Ejecución del Proyecto

## 💻 Ejecutar aplicación

```bash
flutter run lib/main.dart
```

---

# 🎯 Objetivo

Comprender la estructura básica de Flutter mediante el uso de widgets, manejo de estado y navegación entre páginas.

---

# ⭐ Aprendizajes Obtenidos

- Creación de interfaces en Flutter
- Uso de widgets
- Manejo de estado con Provider
- Navegación con NavigationRail
- Diseño responsive
- Gestión de favoritos

---

# 🧠 Conclusión

Durante el desarrollo de esta aplicación se aprendió a utilizar widgets básicos y avanzados para construir interfaces dinámicas e interactivas.

También se implementó el manejo de estado mediante Provider, permitiendo actualizar información en tiempo real dentro de la aplicación.

Además, se trabajó con componentes como NavigationRail, botones, tarjetas y listas, logrando una aplicación capaz de generar palabras aleatorias y guardar elementos favoritos.
