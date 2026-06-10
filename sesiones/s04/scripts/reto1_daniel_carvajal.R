library(ggplot2)
cars <- mtcars
cars$carro <- rownames(mtcars)

ggplot(cars, aes(x = carro, y = mpg)) +
  geom_point()
ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl))) +
  geom_point()
ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point()

ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro))

ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  )

ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  ) +
  labs(
    title = "Carros, rendimiento, potencia, cilindros y una visualización insuperable",
    subtitle = "Me encanta cómo NO se ve nada en el eje x jeje",
    caption = "APA enloqueció y ordenó que este es el nuevo formato de presentación de figuras (Fuente: Me)",
    x = "Nombre del carro",
    y = "Rendimiento en millas/galón",
    color = "Cilindros",
    size = "Caballos de fuerza"
  )



ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  ) +
  labs(
    title = "Carros, rendimiento, potencia, cilindros y una visualización insuperable",
    subtitle = "Me encanta cómo NO se ve nada en el eje x jeje",
    caption = "APA enloqueció y ordenó que este es el nuevo formato de presentación de figuras (Fuente: Me)",
    x = "Nombre del carro",
    y = "Rendimiento en millas/galón",
    color = "Cilindros",
    size = "Caballos de fuerza",
    tag = "Figura para miopes"
  )

ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  ) +
  labs(
    title = "Carros, rendimiento, potencia, cilindros y una visualización insuperable",
    subtitle = "Me encanta cómo NO se ve nada en el eje x jeje",
    caption = "APA enloqueció y ordenó que este es el nuevo formato de presentación de figuras (Fuente: Me)",
    x = "Nombre del carro",
    y = "Rendimiento en millas/galón",
    color = "Cilindros",
    size = "Caballos de fuerza",
    tag = "Figura para miopes"
  ) +
  theme_dark() 


ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  ) +
  labs(
    title = "Carros, rendimiento, potencia, cilindros y una visualización insuperable",
    subtitle = "Me encanta cómo NO se ve nada en el eje x jeje",
    caption = "APA enloqueció y ordenó que este es el nuevo formato de presentación de figuras (Fuente: Me)",
    x = "Nombre del carro",
    y = "Rendimiento en millas/galón",
    color = "Cilindros",
    size = "Caballos de fuerza",
    tag = "Figura para miopes"
  ) +
  theme_dark() +
  coord_polar()


ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  ) +
  labs(
    title = "Carros, rendimiento, potencia, cilindros y una visualización insuperable",
    subtitle = "La gráfica es más ambigua que la frase: el niño vió a la niña con un telescopio",
    caption = "APA enloqueció y ordenó que este es el nuevo formato de presentación de figuras (Fuente: Me)",
    x = "Nombre del carro",
    y = "Rendimiento en millas/galón",
    color = "Cilindros",
    size = "Caballos de fuerza",
    tag = "Figura para miopes"
  ) +
  theme_dark() +
  coord_polar() 
  
ggplot(cars, aes(x = carro, y = mpg, color = factor(cyl), size = hp)) +
  geom_point() +
  geom_text(aes(label = carro)) +
  scale_colour_manual(
    values = c(
      "4" = "#FFFF99",
      "6" = "#7FFF04",  
      "8" = "#FF1493"   
    )
  ) +
  labs(
    title = "Carros, rendimiento, potencia, cilindros y una visualización insuperable",
    subtitle = "La gráfica es más ambigua que la frase: el niño vió a la niña con un telescopio",
    caption = "APA enloqueció y ordenó que este es el nuevo formato de presentación de figuras (Fuente: Me)",
    x = "Nombre del carro",
    y = "Rendimiento en millas/galón",
    color = "Cilindros",
    size = "Caballos de fuerza",
    tag = "Figura para miopes"
  ) +
  theme_dark() +
  coord_polar() +
  theme(
    plot.background = element_rect( fill = "#cbff0f")
  ) +
  theme(
    plot.title = element_text(color = "#FF1493", size = 13, face = "bold"),
    plot.subtitle = element_text(color = "#FF1493", size = 12),
    axis.title.x = element_text(color = "#FF1493", size = 19),
    axis.title.y = element_text(color = "#FF1493", size = 35),
    plot.caption = element_text(color = "#FF1493", size = 10, face = "bold"),
    plot.tag = element_text(color = "#FF1493")
  )

  