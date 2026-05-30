# Tareas por hacer

## Curso

- [x] Definir estructura del repositorio y GitHub Pages
- [x] Planear orden y contenidos de las sesiones (estructura preliminar acordada)
- [ ] Confirmar versión de RStudio en sala de cómputo (¿tiene Quarto integrado?)
- [ ] Pedir a estudiantes que creen cuenta en GitHub antes de S7

## Configuración y setup

- [x] Crear `_quarto.yml` base
- [x] Crear `estilos/slides.scss` y `estilos/sitio.scss`
- [x] Crear workflow de GitHub Actions (`publish.yml`)
- [x] Crear `.gitignore`
- [x] Crear favicon (`imagenes/favicon.svg`)
- [x] Añadir favicon al `_quarto.yml` (`website: favicon: imagenes/favicon.svg`)
- [x] Añadir snippet de links en nueva pestaña al `_quarto.yml`
- [x] Diagnosticar y corregir error de GitHub Actions (posiblemente logo faltante en s01)
- [x] Línea `logo:` en `sesiones/s01/slides.qmd` — no existe, no hay problema
- [x] Instalar extensión codefocus y activarla en `sesiones/_metadata.yml`
- [x] Completar menú Sesiones en `_quarto.yml` con las 9 sesiones agrupadas por semana

## Diapositivas

- [x] Crear diapositivas sesión 1 (borrador completo)
- [x] Mejorar diapositivas sesión 1
- [x] Crear diapositivas sesión 2 — ggplot2 en profundidad
- [x] Crear diapositivas sesión 3 — pipe + dplyr
  - [x] Crear `sesiones/s03/datos/encuesta_bruta.xlsx` (base de datos GAD-7 simulada con problemas típicos de Excel)
  - [x] Añadir sección Tarea 1 al final de s03 (anuncio + descripción + ejemplos de inspiración)
- [x] Crear diapositivas sesión 4 — Importar y organizar datos: Excel, CSV y proyectos de R
- [ ] Crear diapositivas sesión 5 — Automatización de análisis con funciones y simulación
- [ ] Crear diapositivas sesión 6 — Reportes reproducibles con Quarto
- [ ] Crear diapositivas sesión 7 — Quarto: tablas, citas y formatos
- [ ] Crear diapositivas sesión 8 — Quarto: figuras, integración y publicación
- [ ] Crear diapositivas sesión 9 — Herramientas y buenas prácticas de trabajo en R

## Sitio web

- [x] Actualizar sección `#sesiones` en `index.qmd` (temas, salones con colores)
- [x] Actualizar sección `#contenidos-por-semana` en `programa.qmd` (temas, salones con colores)
- [ ] Añadir enlace a diapositivas en `index.qmd` a medida que se completen (s04–s09)

## Tareas para estudiantes

- [x] Crear `tareas/tarea1-figura-fea.qmd` (concurso ggplot2 feo)
- [x] Crear `tareas/tarea1/` (carpeta en el repo para guardar scripts recibidos)
- [x] Carpeta OneDrive para entregas de Tarea 1 — enlace en `tarea1-figura-fea.qmd` y en s03
- [x] Crear `tareas/tarea2-paquete-raro.qmd` (presentar paquete de R)

---

## Estructura de sesiones (preliminar)

| # | Fecha   | Tema                                              | Tarea            |
|---|---------|---------------------------------------------------|------------------|
| 1 | Mié 3   | Intro a R, RStudio, sintaxis, primera figura      | Explorar ggplot2 |
| 2 | Jue 4   | ggplot2 en profundidad                            |                  |
| 3 | Vie 5   | Pipe nativo + dplyr                               | **← Tarea 1**    |
| 4 | Mié 10  | *Tarea 1* + datos externos, proyectos, CSV        |                  |
| 5 | Jue 11  | Simulación de datos, funciones, condicionales     |                  |
| 6 | Vie 12  | Documentos reproducibles (Quarto)                 | **← Tarea 2**    |
| 7 | Mié 17  | *Tarea 2* + Quarto: tablas, citas y formatos      |                  |
| 8 | Jue 18  | Quarto: figuras, integración y publicación        |                  |
| 9 | Vie 19  | Cierre, integración, buenas prácticas             |                  |

## Tabla de comandos

| Situación                                   | Comando                                  |
|---------------------------------------------|------------------------------------------|
| Trabajando en una sesión                    | `quarto render sesiones/s01/slides.qmd`  |
| Revisar el sitio completo antes de publicar | `quarto render`                          |
| Necesitas preview en vivo (excepcional)     | `quarto preview sesiones/s01/slides.qmd` |
| Matar procesos huérfanos                    | `pkill -f "quarto preview"`              |
