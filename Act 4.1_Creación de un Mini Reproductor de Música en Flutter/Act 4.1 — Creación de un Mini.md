# 🎵 Act 4.1 — Creación de un Mini Reproductor de Música en Flutter

## 📚 Información Académica

| Dato | Información |
|------|-------------|
| Alumno | Rodriguez Rosales Diego Guillermo |
| No. Control | 222310306 |
| Docente | Jesús Salas Marín |
| Materia | Desarrollo de Aplicaciones para Dispositivos Móviles |
| Clave | 4Y8A |
| Fecha | 19-Mayo-2026 |

---

# 📖 Descripción

Proyecto desarrollado en Flutter que consiste en la creación de un mini reproductor de música con interfaz gráfica, controles de reproducción y barra de progreso.

---

# 🚀 Creación del Proyecto

## 1️⃣ Crear nuevo proyecto Flutter

Abrimos el buscador de comandos con:

```txt
Ctrl + Shift + P
```

Después escribimos:

```txt
Flutter: New Project
```

y seleccionamos:

```txt
Application
```

---

## 2️⃣ Seleccionar carpeta del proyecto

Elegimos la ubicación donde se guardará el proyecto.

---

## 3️⃣ Asignar nombre del proyecto

Nombre utilizado:

```txt
mini_repr_app
```

---

# ⚙️ Configuración

## 📄 Archivo `pubspec.yaml`

Abrimos el archivo:

```txt
pubspec.yaml
```

y reemplazamos el contenido correspondiente para agregar dependencias y assets necesarios del reproductor.

---

# 📂 Estructura de Archivos

## 📄 main.dart

### ✅ Función

Archivo principal de la aplicación.

### 🔹 Qué hace

- Inicia Flutter
- Ejecuta la aplicación
- Muestra la pantalla principal

---

## 📄 position_data.dart

### ✅ Función

Archivo encargado de almacenar información relacionada con la canción.

---

## 📄 seek_bar.dart

### ✅ Función

Crea la barra de duración y progreso de la canción.

### 🔹 Qué hace

- Muestra progreso
- Permite adelantar canción
- Muestra tiempo actual
- Muestra duración total

---

## 📄 music_player_screen.dart

### ✅ Función

Archivo principal donde se encuentra toda la interfaz del reproductor.

### 🔹 Características

- Mostrar imagen del artista
- Mostrar nombre de canción
- Reproducir audio
- Pausar audio
- Mostrar barra de progreso
- Controlar botones multimedia

---

# 💻 Código Principal

## 🎵 Reproductor de Música

```dart
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
```

---

# ▶️ Ejecución del Proyecto

## 1️⃣ Seleccionar dispositivo

En la barra inferior de Visual Studio Code seleccionar el dispositivo de ejecución.

---

## 2️⃣ Seleccionar escritorio Windows

Elegir:

```txt
Windows (desktop)
```

---

## 3️⃣ Ejecutar aplicación

Abrir la terminal desde:

```txt
Terminal → New Terminal
```

y ejecutar la aplicación.

---

## 💻 Ejecución por comando

```bash
flutter run lib/main.dart
```

---

# 🖼️ Resultado

La aplicación permite:

- Reproducir música
- Pausar audio
- Visualizar barra de progreso
- Mostrar información de canción y artista

---

# 🧠 Preguntas de Reflexión

## ❓ ¿Qué retos encontraste al seguir las instrucciones del video?

Acomodar las clases y mantener una estructura clara para corregir errores.

---

## ❓ ¿Qué diferencia notaste entre una aplicación que simula una interfaz y una que realmente reproduce audio?

Las aplicaciones que realmente reproducen audio tienen más limitaciones y requieren manejo de recursos multimedia.

---

## ❓ ¿Qué widgets consideras más importantes para construir un reproductor en Flutter?

Los controles de reproducción de música y la barra de progreso.

---

# 🛠️ Tecnologías Utilizadas

- Flutter
- Dart
- Visual Studio Code
- just_audio
- RxDart

---

# ⭐ Objetivo

Aplicar conocimientos de Flutter para desarrollar una interfaz multimedia funcional utilizando reproducción de audio y control de estados.