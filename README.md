# Curso de R · Universidad El Bosque · Junio 2026

<div align="center">
  <img src="imagenes/logo.svg" alt="logo" />
</div>

Materiales del curso introductorio **Maneja, explora y visualiza datos con R**, ofrecido de forma gratuita en la Universidad El Bosque (Bogotá, Colombia).

- **Sitio web del curso:** `https://jdleongomez.github.io/curso-r/`
- **Fechas:** 3 – 19 de junio de 2026 (miércoles, jueves y viernes)
- **Horario:** 10:00 – 12:00 m.
- **Profesor:** Juan David Leongómez ([jdleongomez.info](https://jdleongomez.info/es/))

## Estructura del repositorio

```
curso-r/
├── index.qmd               # Página principal del sitio
├── programa.qmd            # Objetivos, contenidos y recursos
├── sesiones/
│   ├── s01/ … s09/         # Presentaciones (revealjs) por sesión
│   └── s04/
│       ├── scripts/        # Scripts .R del Reto 1 (uno por estudiante)
│       └── reto1-figuras.qmd  # Presentación con los scripts y figuras del Reto 1
├── retos/
│   ├── reto1-figura-fea.qmd   # Enunciado y criterios del Reto 1
│   └── reto2-paquete-raro.qmd
├── estilos/
│   ├── slides.scss         # Tema visual de las presentaciones
│   └── sitio.scss          # Tema visual del sitio web
└── .github/workflows/
    └── publish.yml         # GitHub Actions: render + publicar en gh-pages
```

## Reproducibilidad

Las presentaciones se renderizan automáticamente con GitHub Actions cada vez
que se hace push a `main`, y se publican en GitHub Pages.

Para renderizar localmente necesitas [Quarto](https://quarto.org/) y R con los
paquetes listados en `.github/workflows/publish.yml`.

## Licencia

El contenido de este repositorio se distribuye bajo licencia
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
El código se distribuye bajo licencia MIT.
