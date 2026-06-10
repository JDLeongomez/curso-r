library(palmerpenguins)
library(tidyverse)

pinguinos <- drop_na(penguins)

ggplot(
  pinguinos,
  aes(
    x = body_mass_g,
    fill = species
  )
) +
  geom_density(
    alpha = 0.9,
    colour = "yellow",
    linewidth = 2
  ) +
  scale_fill_manual(
    values = c(
      "Adelie" = "#FF00FF",
      "Chinstrap" = "#00FF00",
      "Gentoo" = "#00FFFF"
    )
  ) +
  labs(
    title = "Hola, hablaremos sobre los pingunos",
    subtitle = "son muy bellos",
    caption = "nos caen bien"
  ) +
  theme(
    plot.background = element_rect(
      fill = "black",
      colour = "red",
      linewidth = 5
    ),
    panel.background = element_rect(
      fill = "orange",
      colour = "purple",
      linewidth = 4
    ),
    panel.grid.major = element_line(
      colour = "#00FF00",
      linewidth = 2
    ),
    panel.grid.minor = element_line(
      colour = "cyan",
      linewidth = 1
    ),
    text = element_text(
      family = "Comic Sans MS",
      colour = "hotpink",
      size = 24
    ),
    axis.text.x = element_text(
      angle = 73,
      colour = "yellow"
    ),
    axis.text.y = element_text(
      angle = -40,
      colour = "white"
    ),
    legend.position = "bottom",
    legend.background = element_rect(
      fill = "red",
      colour = "yellow",
      linewidth = 3
    ),
    legend.text = element_text(
      size = 20,
      colour = "cyan"
    ),
    legend.title = element_text(
      size = 24,
      colour = "#00FF00"
    ),
    plot.title = element_text(
      size = 40,
      face = "bold.italic",
      hjust = 0.5
    ),
    plot.subtitle = element_text(
      size = 28,
      face = "bold",
      colour = "green"
    ),
    plot.caption = element_text(
      size = 22,
      colour = "white"
    )
  )
