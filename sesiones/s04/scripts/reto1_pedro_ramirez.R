library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
    geom_histogram(binwidth = 0.3, alpha = 0.7, position = "identity") +
    labs(
        title = "Longitud del sépalo por especie",
        x = "Longitud del sépalo (cm)",
        y = "Frecuencia",
        fill = "Especie"
    ) +
    theme_minimal()
