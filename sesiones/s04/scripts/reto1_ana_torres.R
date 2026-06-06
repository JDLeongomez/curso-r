library(ggplot2)

ggplot(mtcars, aes(x = wt, y = mpg, colour = factor(cyl))) +
    geom_point(size = 3) +
    labs(
        title = "Peso vs. consumo de combustible",
        x = "Peso (1000 lb)",
        y = "Millas por galón",
        colour = "Cilindros"
    ) +
    theme_minimal()
