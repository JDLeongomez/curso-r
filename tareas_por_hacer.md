# Tareas por hacer

## Curso

- [x] Definir estructura del repositorio y GitHub Pages
- [x] Planear orden y contenidos de las sesiones (estructura preliminar acordada)
- [x] Confirmar versión de RStudio en sala de cómputo (¿tiene Quarto integrado?)
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
  - [x] Añadir slide de presentación de tidyverse (con hex grid de los 9 paquetes)
  - [x] Añadir hex stickers de paquetes a sesiones (ggplot2, dplyr, readr, readxl, faux, quarto)
- [x] Crear diapositivas sesión 3 — pipe + dplyr
  - [x] Crear `sesiones/s03/datos/encuesta_bruta.xlsx` (base de datos GAD-7 simulada con problemas típicos de Excel)
  - [x] Añadir sección Reto 1 al final de s03 (anuncio + descripción + ejemplos de inspiración)
- [x] Crear diapositivas sesión 4 — Importar y organizar datos: Excel, CSV y proyectos de R
- [x] Crear diapositivas sesión 5 — Automatización de análisis con funciones y simulación
- [x] Crear diapositivas sesión 6 — Reportes reproducibles con Quarto
  - [x] Añadir anuncio Reto 2 al final de s06
- [x] Crear diapositivas sesión 7 — Quarto: tablas, citas y formatos
  - [x] Crear `sesiones/s07/referencias.bib` (R, tidyverse, Spitzer 2006)
- [ ] Crear diapositivas sesión 8 — Quarto: figuras, integración y publicación
- [ ] Crear diapositivas sesión 9 — Reto 2 + Cierre, integración, buenas prácticas

## Recursos y estructura del proyecto

- [x] Crear `plantilla_proyecto/` con estructura lista para descargar (`curso_r.Rproj`, `datos/`, `figuras/`, `scripts/`)
- [x] Revisar y corregir consistencia de rutas y carpetas en s02–s07

## Sitio web

- [x] Actualizar sección `#sesiones` en `index.qmd` (temas, salones con colores)
- [x] Actualizar sección `#contenidos-por-semana` en `programa.qmd` (temas, salones con colores)
- [ ] Añadir enlace a diapositivas en `index.qmd` a medida que se completen (s04–s09)
  - [x] s04 — enlace añadido
  - [x] s05 — enlace añadido
  - [x] s06 — enlace añadido
  - [x] s07 — enlace añadido
- [x] Crear página de referencia rápida (`glosario.qmd`) con funciones y paquetes de S1–S7
- [ ] Actualizar `glosario.qmd` con funciones de S8 al completar esa sesión
- [ ] Actualizar `glosario.qmd` con funciones de S9 al completar esa sesión

## Retos para estudiantes

- [x] Crear `retos/reto1-figura-fea.qmd` (concurso ggplot2 feo)
- [x] Crear `retos/reto1/` (carpeta en el repo para guardar scripts recibidos)
- [x] Carpeta OneDrive para entregas de Reto 1 — enlace en `reto1-figura-fea.qmd` y en s03
- [x] Crear `sesiones/s04/reto1-figuras.qmd` (presentación auto-generada: slide por estudiante con script + figura; slide de galería final para votar)
- [x] Crear `retos/reto2-paquete-raro.qmd` (presentar paquete de R)

---

## Estructura de sesiones (preliminar)

| # | Fecha   | Tema                                              | Reto             |
|---|---------|---------------------------------------------------|------------------|
| 1 | Mié 3   | Intro a R, RStudio, sintaxis, primera figura      | Explorar ggplot2 |
| 2 | Jue 4   | ggplot2 en profundidad                            |                  |
| 3 | Vie 5   | Pipe nativo + dplyr                               | **← Reto 1**     |
| 4 | Mié 10  | *Reto 1* + datos externos, proyectos, CSV         |                  |
| 5 | Jue 11  | Funciones, condicionales y simulación             |                  |
| 6 | Vie 12  | Documentos reproducibles (Quarto)                 | **← Reto 2**     |
| 7 | Mié 17  | Quarto: tablas, citas y formatos                  |                  |
| 8 | Jue 18  | Quarto: figuras, integración y publicación        |                  |
| 9 | Vie 19  | *Reto 2* + Cierre, integración, buenas prácticas  |                  |

## Tabla de comandos

| Situación                                   | Comando                                  |
|---------------------------------------------|------------------------------------------|
| Trabajando en una sesión                    | `quarto render sesiones/s01/slides.qmd`  |
| Revisar el sitio completo antes de publicar | `quarto render`                          |
| Necesitas preview en vivo (excepcional)     | `quarto preview sesiones/s01/slides.qmd` |
| Matar procesos huérfanos                    | `pkill -f "quarto preview"`              |
