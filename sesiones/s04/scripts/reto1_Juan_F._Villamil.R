#Se requiere de ggplot2 (tidyverse) y de eegkitdata, para que funcionen
#Solo usarlo en caso de no tenerlos instalados
#install.packages("eegkitdata")
#install.packages("tidyverse")

#Cargar los paquetes necesarios
library(tidyverse)
library(eegkitdata)

#Datos para construir la grafica
data("eegdata")
sueño_data <- eegdata
glimpse(sueño_data)

#Explorando los datos
sueño_data |> count(time, sort = TRUE)
sueño_data |> count(voltage, sort = TRUE)

#Creando una figura que sea irreverente
ggplot(sueño_data, aes (x = time, y = voltage, colour = subject)) +
  geom_point(alpha = 0.6) +
  geom_smooth()

#Grafica completamente irreverente con pesimo diseño
ggplot(sueño_data, aes (x = time, y = voltage, colour = subject)) +
  geom_point(alpha = 0.6) +
  geom_smooth() +
  scale_colour_manual(
    values = c("#0000ff", "#ff0000", "#1000ff", "#0013ff", "#0230ff",
               "#7400ff", "#0010ff", "#00003f", "#0000f3", "#0ff", "#ffff9f", 
               "#f00346", "#ff0234", "#ff4535", "#ff0834", "#f45550", "#f54300",
               "#f35000", "#f65050", "#ff0340")) +
labs(
  title = "ReCOPILACIoN InNECESARIAMENTE lARGA de tODO EL sUEÑO mUNDIAL",
  subtitle = "aNALISIS pROXIMATORIO dEL tIEMPO",
  caption = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
  x = "segundasos, no?",
  y = "ELECTROSOIDO",
  colour = "tipo HOLLAAAAAAAA"
) +
theme(
  text = element_text(colour = "yellow"),
  plot.background = element_rect(fill = "#3ca60c"),
  panel.background = element_rect(fill = "#d39"),
  panel.grid.major = element_line(
    color = "#a1a1a1", linewidth = 3),
  panel.grid.minor = element_line(color = "#7a8700")
)
  
  

