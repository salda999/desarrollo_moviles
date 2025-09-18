# desarrollo_moviles

# Taller: Paso de parámetros con go_router

Este ejemplo muestra cómo pasar parámetros entre pantallas usando [go_router](https://pub.dev/packages/go_router) en Flutter.

## Rutas
- `/` → `HomePage`
- `/detail/:id` → `DetailPage`

Se demuestran dos formas de paso de datos:
- Parámetro en la ruta (`:id`), e.g. `/detail/7`.
- `extra` (objeto) al navegar: `context.go('/detail/7', extra: {'name': 'Item 7'})`.

## Requisitos
- Flutter SDK instalado
- Dart SDK acorde al proyecto

## Instalación
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

## Notas
- Asegúrate de tener en `pubspec.yaml`:

```yaml
dependencies:
  go_router: ^14.2.0
```

- Si ya había configuración previa en `pubspec.yaml`, esta PR solo agrega la dependencia sin tocar el resto de la configuración.