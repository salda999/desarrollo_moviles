# desarrollo_moviles

# Taller: Paso de parámetros con go_router

Este taller lo desarrollé como estudiante de 8º semestre de Ingeniería de Sistemas con el objetivo de entender y practicar el enrutamiento declarativo en Flutter y el paso de datos entre pantallas utilizando `go_router`.

## Objetivos
- Configurar `go_router` en un proyecto Flutter.
- Implementar dos rutas: Home (`/`) y Detail (`/detail/:id`).
- Pasar parámetros usando:
  - Parámetro de ruta (`:id`).
  - Objeto `extra` al navegar.

## Tecnologías
- Flutter (Material 3)
- Paquete: [go_router](https://pub.dev/packages/go_router)

## Rutas
- `/` → `HomePage`
- `/detail/:id` → `DetailPage`
  - Ejemplo: `/detail/7`
  - Navegación con extra: `context.go('/detail/7', extra: {'name': 'Item 7'})`

## Cómo correrlo
```bash
flutter pub get
flutter run
```

## Estructura
```
lib/
  main.dart
  pages/
    home_page.dart
    detail_page.dart
```

## Notas técnicas
- `pubspec.yaml` incluye:
```yaml
dependencies:
  go_router: ^14.2.0
```

## Cómo generé las “capturas” sin compilar localmente
Mediante pruebas “golden” en CI. El flujo genera imágenes PNG de las pantallas y las sube como artefacto descargable en la pestaña “Actions”.

## Lecciones aprendidas
- `go_router` simplifica rutas anidadas y parámetros.
- `extra` es útil para pasar objetos sin exponerlos en la URL.
- Las pruebas “golden” documentan visualmente sin emulador local.