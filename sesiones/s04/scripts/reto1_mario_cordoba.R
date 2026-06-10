# Cargar paquetes
library(tidyverse)
library(palmerpenguins)

# Limpiar datos
pinguinos <- penguins |> 
  drop_na(
    species,
    body_mass_g,
    flipper_length_mm,
    sex,
    island
  )


# FIGURA 


ggplot(
  pinguinos,
  aes(flipper_length_mm, body_mass_g
  )
) +
  
# CAPA APA 7 


geom_point(
  size = 2,
  alpha = .7,
  color = "black"
) +
  
  geom_smooth(
    method = "lm",
    se = TRUE,
    color = "black",
    linewidth = .8
  ) +
  
  facet_wrap(
    ~ species,
    nrow = 1
  ) +
  
  labs(
    x = "Longitud de la aleta (mm)",
    y = "Masa corporal (g)"
  ) +
  
  theme_classic(base_size = 12) +
  

# Ahora sí lo pongo bien pro
# Puntotes de colores 
geom_point(
  aes(
    colour = island,
    size = body_mass_g
  ),
  alpha = .7
) +
  
  scale_colour_manual(
    values = c(
      "hotpink",
      "chartreuse",
      "cyan"
    )
  ) +
  
  # Regresión suave, pa que se note que sé funciones
  geom_smooth(
    colour = "yellow",
    linewidth = 6,
    se = FALSE
  ) +
  
  # Texto pa´dejar todo claro
  annotate(
    "text",
    x = 200,
    y = 4000,
    label = "casi APA",
    colour = rgb(57, 255, 20, maxColorValue = 255),
    size = 8,
    angle = 45
  ) +
  
  annotate(
    "text",
    x = 175,
    y = 5000,
    label = "bien pro",
    colour = "blue",
    size = 3,
    angle = -45
  ) +
  
  
  # Título 
  labs(
    title = "mAsA x aLeTaS",
    subtitle = "OK completar",
    colour = "ISLAND, traducir",
    size = "la MAZa"
  ) +
  
 
#  el  tema  Fondo 


theme(panel.background = element_rect(
    fill = "orange"),
  
  # Fondo general amarillo
  plot.background = element_rect(
    fill = "yellow"
  ),
  
# sus buenas guías cyan
  
  panel.grid.minor = element_line(
    colour = "cyan",
    linewidth = 1
  ),
  
  # Título corridito
  plot.title = element_text(
    size = 22,
    face = "bold",
    colour = "purple",
    angle = 20
  ))
