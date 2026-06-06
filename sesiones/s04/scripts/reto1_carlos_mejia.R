library(ggplot2)

ggplot(diamonds[1:500, ], aes(x = cut, fill = cut)) +
    geom_bar() +
    labs(
        title = "Tipo de corte de diamantes",
        x = NULL,
        y = "Conteo"
    ) +
    theme_classic() +
    theme(legend.position = "none")
