library(tidyverse)
pollos <- ChickWeight

pollos |>
  ggplot(aes(x = weight, y = Time, color = Diet, size = weight)) +
  geom_line(aes(group = Chick), linetype = "twodash", linewidth = 2, alpha = 0.7) +
  scale_color_manual(values = c("#FF00FF", "#00FF00", "#FFFF00", "#8B4513")) +
  scale_size_continuous(range = c(3, 25)) + 
  labs(
    title = "E v O l U c I o N  dE  pOlLoS",
    subtitle = "Gráfica 100% clara y objetiva",
    x = "PESO (Unidades Misteriosas)",
    y = "TIEMPO (Siglos)",
    color = "Dieta Secreta",
    size = "Gordura"
  ) +
  theme(
    plot.background = element_rect(fill = "#FF4500", color = "blue", linewidth = 10),
    panel.background = element_rect(fill = "#00FFFF"),
    axis.text.y = element_text(angle = 42, color = "green", size = 8),
    plot.title = element_text(size = 35, color = "yellow", face = "italic", hjust = 0.8),
    legend.position = c(0.5, 0.5) 
  ) +
  coord_polar()
