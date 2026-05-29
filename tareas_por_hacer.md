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
- [ ] Crear diapositivas sesión 4 — datos externos, proyectos, rutas relativas
- [ ] Crear diapositivas sesión 5 — simulación de datos, funciones, faux
- [ ] Crear diapositivas sesión 6 — Quarto, documentos reproducibles
- [ ] Crear diapositivas sesión 7 — Quarto avanzado, RevealJS, referencias
- [ ] Crear diapositivas sesión 8 — Git y GitHub
- [ ] Crear diapositivas sesión 9 — cierre e integración

## Sitio web

- [ ] Actualizar sección `#sesiones` en `index.qmd` con temas y enlaces finales
- [ ] Actualizar sección `#contenidos-por-semana` en `programa.qmd`

## Tareas para estudiantes

- [x] Crear `tareas/tarea1-figura-fea.qmd` (concurso ggplot2 feo)
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
| 7 | Mié 17  | *Tarea 2* + Quarto avanzado, RevealJS, referencias|                  |
| 8 | Jue 18  | Git y GitHub                                      |                  |
| 9 | Vie 19  | Cierre, integración, buenas prácticas             |                  |

## Tabla de comandos

| Situación                                   | Comando                                  |
|---------------------------------------------|------------------------------------------|
| Trabajando en una sesión                    | `quarto render sesiones/s01/slides.qmd`  |
| Revisar el sitio completo antes de publicar | `quarto render`                          |
| Necesitas preview en vivo (excepcional)     | `quarto preview sesiones/s01/slides.qmd` |
| Matar procesos huérfanos                    | `pkill -f "quarto preview"`              |
