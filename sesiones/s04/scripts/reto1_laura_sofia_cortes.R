#imagen fea
# Cargar
library(tidyverse)

# 
datos_grafico <- LifeCycleSavings |> 
  rownames_to_column(var = "pais")

# ggplot
ggplot(
  data = datos_grafico, 
  mapping = aes(
    x = pop15, 
    y = ddpi, 
    colour = pais,  # color por país
    shape = pais    #forma por pais
  )
) +
  
  # geom_col
  geom_col(fill = "#c0ff38", alpha = 0.8) + 
  
  #geom_line
  geom_line(colour = "purple", linewidth = 4) +
  
  #geom_jitter
  geom_jitter(size = 7, alpha = 0.9) +
  
  # 
  scale_colour_viridis_d(option = "inferno") +
  
  # TEXTOS EN MAYÚSCULA
  labs(
    title    = "GRAFico de algo???",
    subtitle = "MUUUuuChassSsSsS$S$S KCoSa$ ",
    caption  = "Hecho con R 0-0",
    x        = "EDAD MENOR A 15",
    y        = "INGRESO"
  ) +
  
  theme_dark() +
  theme (
    plot.title = element_text (color="#FC7B14", size=40, face="bold" ),
    plot.subtitle = element_text(color= "#C72AE8", size=35, face="bold"),
    plot.caption = element_text(color= "#FCF912", size=10),
    axis.title.x = element_text(color= "#FCF912", size=20), 
    axis.title.y = element_text(color= "#FCCFF9", size=20),
    plot.background = element_rect(fill = "blue"),
    panel.background = element_rect(fill="#00FF19"))








