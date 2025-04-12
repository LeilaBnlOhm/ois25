library(ggplot2)

set.seed(123)
data <- data.frame(
  catégorie = rep(c("A", "B", "C"), each = 50),
  valeur = c(
    rnorm(50, mean = 5, sd = 1),
    rnorm(50, mean = 7, sd = 1.5),
    rnorm(50, mean = 6, sd = 0.5)
  )
)

ggplot(data, aes(x = catégorie, y = valeur, fill = catégorie)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    title = "Distribution des valeurs par catégorie",
    x = "Catégorie",
    y = "Valeur"
  )