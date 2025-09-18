# Evidencias del Taller — Paso de parámetros con go_router

## Datos del estudiante
- Nombre: 
- Semestre: 8º de Ingeniería de Sistemas
- Materia / Docente: 

## Objetivo
Implementar rutas con `go_router` y demostrar paso de parámetros por URL y por `extra`.

## Pasos realizados
- [x] Configuré `go_router` en `pubspec.yaml`
- [x] Implementé las rutas `/` y `/detail/:id`
- [x] Navegué pasando `extra` con `name`
- [x] Generé “capturas” con pruebas golden desde CI

## Capturas (adjuntar PNGs)
- Home:
  - ![Home](./capturas/Home.png)
- Detail:
  - ![Detail](./capturas/Detail.png)

## Código relevante
- `lib/main.dart`
- `lib/pages/home_page.dart`
- `lib/pages/detail_page.dart`

## Conclusiones
- El enrutamiento con `go_router` es declarativo y escalable.
- Para datos simples, `:id` en la ruta es suficiente; para objetos, `extra` es más flexible.
- Automatizar capturas con golden facilita la entrega sin emuladores locales.