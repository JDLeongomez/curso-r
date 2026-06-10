library(ggplot2)

#datos <- read.csv(file.choose())
datos <- read.csv("dataset_depressao_infantil_public.csv")

View(datos)

str(datos)

#Ver la variables
names(datos) <- c(
  "id",
  "edad",
  "nivel_educativo",
  "codigo_nivel_educativo",
  "grado_escolar",
  "composicion_hogar",
  "codigo_composicion_hogar",
  "tiempo_pantalla_min_dia",
  "influencia_redes_sociales",
  "codigo_influencia_redes",
  "usa_redes_sociales",
  "actividad_fisica_fuera_colegio",
  "codigo_actividad_fisica_fuera_colegio",
  "realiza_actividad_fisica",
  "dias_actividad_fisica_semana",
  "puntaje_cdi_total",
  "cdi_mayor_igual_13",
  "cdi_mayor_igual_17"
)

#crear una nueva variable para ver el tiempo en horas
datos$tiempo_pantalla_horas_dia <- datos$tiempo_pantalla_min_dia / 60

View(datos)
#redondear el resultado a dos decimales

datos$tiempo_pantalla_horas_dia <- round(datos$tiempo_pantalla_min_dia / 60, 2)

#Variables que quiero usar

datos_grafica <- datos[, c(
  "tiempo_pantalla_horas_dia",
  "puntaje_cdi_total",
  "usa_redes_sociales",
  "cdi_mayor_igual_17"
)]
#Quiero ver los resultados del estudio, porque si jejeje

ggplot(datos_grafica, aes(x = tiempo_pantalla_horas_dia, y = puntaje_cdi_total)) +
  geom_point() +
  labs(
    title = "Relación entre tiempo de pantalla y puntaje CDI",
    subtitle = "Me da curiosidad ver la relación de los datos",
    x = "Tiempo de pantalla al día en horas",
    y = "Puntaje total CDI"
  ) +
  theme_minimal()
#Habrá correlación?, esto me está gustando
correlacion <- cor(
  datos_grafica$tiempo_pantalla_horas_dia,
  datos_grafica$puntaje_cdi_total,
  use = "complete.obs"
)
ggplot(datos_grafica, aes(x = tiempo_pantalla_horas_dia, y = puntaje_cdi_total)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(
    title = "Relación entre tiempo de pantalla y puntaje CDI",
    subtitle = "Gráfica de dispersión con línea de tendencia",
    x = "Tiempo de pantalla al día en horas",
    y = "Puntaje total CDI"
  ) +
  theme_minimal()

#Ahora sí, no más distracción, vamos al grano

ggplot(
  datos_grafica,
  aes(
    x = tiempo_pantalla_horas_dia,
    y = puntaje_cdi_total,
    colour = factor(usa_redes_sociales),
    size = puntaje_cdi_total,
    shape = factor(cdi_mayor_igual_17)
  )
) +
  geom_point(alpha = 0.8) +
  geom_text(
    aes(label = puntaje_cdi_total),
    size = 8,
    colour = "red"
  ) +
  geom_smooth(method = "lm", colour = "#FF00FF", linewidth = 2) +
  scale_colour_manual(
    values = c(
      "0" = "#00FFFF",
      "1" = "#FF1493"
    ),
    labels = c(
      "0" = "No usa redes sociales",
      "1" = "Usa redes sociales"
    )
  ) +
  labs(
    tag = "Figura 1: advertencia visual",
    title = "Tiempo de pantalla, CDI y una gráfica que claramente necesita terapia visual",
    subtitle = "Entre más pasae el tiempo más normal la veo,será la hora",
    caption = "eshorrible pero es 10000% REAL!!!",
    x = "Tiempo de pantalla al día en horas, QUE LE PASA A LA GENERACIÓN DE HOY?",
    y = "Puntaje total CDI, osea papito ud está triste!",
    colour = "Uso de redes sociales",
    size = "Puntaje CDI",
    shape = "CDI ≥ 17"
  ) +
  theme_dark() +
  geom_point(alpha = 0.8) +
  geom_text(
    aes(label = puntaje_cdi_total),
    size = 2,
    colour = "red"
  ) +
  geom_path(
    aes(group = factor(usa_redes_sociales)),
    linewidth = 1,
    alpha = 0.8,
    colour = "#7FFF00"
  )

