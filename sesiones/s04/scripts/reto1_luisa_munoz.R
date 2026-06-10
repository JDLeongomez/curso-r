# cargar paquetes necesarios
library(tidyverse)
library(palmerpenguins)

pinguinos<- penguins
pinguinos <- drop_na(penguins)

#codigo
ggplot(pinguinos, aes(x = island, y = body_mass_g, fill = island))+
  geom_dotplot(
    binaxis = "y",
    stackdir = "center", # apila los puntos al centro
    dotsize = 30, # tamaño de los puntos
    stackratio = 0.1, # espacio entre los puntos
    color = "#D98116",
    binwidth = 12, #ancho de los intervalos
    alpha = 0.8
  ) +
  scale_fill_manual(
    values = c(
      "Biscoe" = "#147339",
      "Dream" = "#19D916",
      "Torgersen" = "#C5D916")
  ) +
  labs(
    title = "MAs4 C0rp0r4l D3 l0s p|Ngüin05 p0R I5La",
    x = "IsLAaA", y = "MAsitA (g)"
 )+
  theme(
    plot.title = element_text(
      hjust = 0.5,    # alineacion horizontal
      size = 19,
      angle = 180,
      colour = "#FF1A1A",
      vjust = 3),  # alineacion vertical
    
    #titulo del eje x
    axis.title.x = element_text(
      angle = 20, colour = "#4B2687", face = "bold"),
    
    # titulo del eje y
    axis.title.y = element_text(
      angle = 100, colour = "#6200FF", face = "bold"),
    
    # texto del eje y
    axis.text.y = element_text(
      color = "#FF00DD", angle = 180, size = 16
    ),
    # texto del eje x
    axis.text.x = element_text(
      color = "#00FFBB", size = 16, angle = 45
    ),
    # color del fondo
    plot.background = element_rect(
      fill = "#F2FF00"), 
    
    # color del panel
    panel.background = element_rect(
      fill = "#FFBB00"), 
    panel.grid = element_blank(),
    
    legend.background = element_rect(
      fill = "#F99CFF" ),
    legend.key = element_rect(
      fill = "#051042"),
    legend.text = element_text(
      colour = "#61A8FF", angle = 200, size = 12)
    ) +
  # "texto" encima
  annotate(
    "text",
    x = 3, y = 4750,
    label = "👀️",
    colour = "red",
    size = 9
  )+
  annotate(
    "text",
    x = 2, y = 4900,
    label = "👀️",
    colour = "red",
    size = 8.5
    )+
  annotate(
    "text",
    x = 1, y = 6400,
    label = "👀️",
    colour = "red",
    size = 8.5)

