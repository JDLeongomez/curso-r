#####. grafica fea
#install.packages("gapminder")
library(gapminder)
library(tidyverse)
glimpse(gapminder)
ggplot(
  gapminder,
  aes(
    x      = country,
    y      = lifeExp,
    colour = continent
  )
) +
  geom_violin(fill = 2) +
  geom_jitter(
    width = 0.3,
    alpha = 0.5,
    size  = 4
  ) +
  geom_boxplot(fill = "#79fa07", alpha = 2) +
  
  annotate(
    "text",
    x = 60,
    y = 55,
    label = "GAPMINDER",
    size = 10,
    color = "red",
    fontface = "bold.italic",
    angle = 60
  ) +
  
  labs(
    title    = "EXPECTATIVA DE VIDA",
    subtitle = "de la base de datos gapminder",
    x        = "continente",
    y        = "expectativa de vida",
    colour   = "continente",
    caption  = "Datos: base de datos"
  ) +
  
  theme(
    legend.position = "none",
    
    axis.title = element_text(
      size = 10,
      face = "plain",
      color = "#79fa07",
      angle = 15
    ),
    
    axis.title.x = element_text(
      margin = margin(t = -70)
    ),
    
    plot.title = element_text(
      face = "bold.italic",
      size = 35,
      color = "#00FFFF",
      angle = 0
    ),
    
    plot.subtitle = element_text(
      color = "#1807fa",
      angle = 4
    ),
    
    plot.background = element_rect(
      fill = "magenta",
      color = "green",
      linewidth = 5,
    ),
    
    panel.background = element_rect(
      fill = "#001eff"
    )
  ) +
  coord_polar() 

