# Taller 1 – Flutter + Widgets + Git Flow

## Estudiante
- **Nombre completo:** Jhonatan Saldarriaga
- **Código:** 230202010

## Descripción
Este taller consiste en la construcción de una pantalla básica en Flutter utilizando un `StatefulWidget` y el uso de `setState()` para actualizar el estado de la aplicación.  
Además, se aplicaron buenas prácticas de control de versiones con GitHub, siguiendo un flujo de trabajo con ramas: `main`, `dev` y `feature/taller1`.

## Requisitos cumplidos
- AppBar con título inicial **“Hola, Flutter”** (variable de estado).
- Texto centrado con el **nombre completo y código del estudiante**.
- `Row` con dos imágenes:
  - `Image.network()`
  - `Image.asset()`
- Botón `ElevatedButton` que alterna el título entre **“Hola, Flutter”** y **“¡Título cambiado!”** mostrando además un `SnackBar` con el mensaje **“Título actualizado”**.
- Widgets adicionales:
  - `ListView` con 3–4 elementos (ícono y texto).
  - `GridView` con al menos 4 celdas.
- Uso de `Container`, `Padding`, `SizedBox` y `Column` para organizar el diseño.

## Capturas
- Estado inicial de la app con el título **“Hola, Flutter”**.
- Estado después de presionar el botón (título cambiado + SnackBar).
- Visualización de los widgets adicionales (`ListView` y `GridView`).

*(Inserta aquí las imágenes o guárdalas en la carpeta `assets/capturas` y referéncialas con Markdown)*

Ejemplo:
```markdown
![Estado inicial](assets/capturas/inicial.png)
![Título cambiado](assets/capturas/cambiado.png)
![Widgets extra](assets/capturas/widgets.png)

