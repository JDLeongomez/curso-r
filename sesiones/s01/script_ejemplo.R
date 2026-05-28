# =========================================================
# Ejemplo de script organizado y comentado en R
# =========================================================

# ---------------------------------------------------------
# 1. Cargar paquetes necesarios
# ---------------------------------------------------------

# Cargar tidyverse para manipulación y visualización de datos
library(tidyverse)

# ---------------------------------------------------------
# 2. Crear un conjunto de datos de ejemplo
# ---------------------------------------------------------

# Fijar semilla para que los resultados sean reproducibles
set.seed(123)

# Crear datos simulados
datos <- tibble(
  participante = 1:20,
  puntaje      = rnorm(20, mean = 75, sd = 10),
  grupo        = rep(c("Control", "Experimental"), each = 10)
)

# ---------------------------------------------------------
# 3. Resumen descriptivo
# ---------------------------------------------------------

# Calcular promedio y desviación estándar de puntajes por grupo
resumen <- datos |>
  group_by(grupo) |>
  summarise(
    promedio   = mean(puntaje),
    desviacion = sd(puntaje)
  )

# Mostrar resultados en consola
print(resumen)

# ---------------------------------------------------------
# 4. Visualización
# ---------------------------------------------------------

# Paleta de colores personalizada
colores <- c("Control" = "#225faa", "Experimental" = "#6b1220")

# Figura: violín + caja + puntos individuales + media
ggplot(datos, aes(x = grupo, y = puntaje, fill = grupo, colour = grupo)) +

  # Violín: muestra la forma completa de la distribución
  geom_violin(alpha = 0.2, width = 0.7, linewidth = 0.4) +

  # Caja estrecha dentro del violín: mediana y cuartiles
  geom_boxplot(width = 0.12, alpha = 0.8, outlier.shape = NA, linewidth = 0.6) +

  # Puntos individuales (cada participante)
  geom_jitter(width = 0.07, size = 2.8, alpha = 0.75) +

  # Rombo blanco: media del grupo
  stat_summary(
    fun = mean,
    geom = "point",
    shape = 23,
    size = 4.5,
    fill = "white",
    colour = "grey25",
    linewidth = 0.5
  ) +

  # Colores
  scale_fill_manual(values = colores) +
  scale_colour_manual(values = colores) +

  # Etiquetas
  labs(
    title    = "Distribución de puntajes por grupo",
    subtitle = "Cada punto = un participante · El rombo señala la media grupal",
    x        = NULL,
    y        = "Puntaje",
    caption  = "Datos simulados · set.seed(123)"
  ) +

  # Tema
  theme_minimal(base_size = 14) +
  theme(
    legend.position    = "none",
    panel.grid.major.x = element_blank(),
    panel.grid.minor   = element_blank(),
    plot.title         = element_text(face = "bold", size = 16),
    plot.subtitle      = element_text(colour = "grey50", size = 11),
    plot.caption       = element_text(colour = "grey60", size = 9),
    axis.text.x        = element_text(size = 13, face = "bold")
  )
