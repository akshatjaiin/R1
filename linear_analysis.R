# Load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Generate some sample data
set.seed(123)
n <- 100
data <- data.frame(
  x = rnorm(n, mean = 5, sd = 2),
  y = 3 + 2 * rnorm(n, mean = 5, sd = 2) + rnorm(n)
)

# Plot the data with ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Scatter Plot with Linear Regression Line",
       x = "Independent Variable (x)",
       y = "Dependent Variable (y)")

# Fit a linear model
model <- lm(y ~ x, data = data)
summary(model)

# Predict new values based on the model
new_data <- data.frame(x = c(4, 6, 8))
predictions <- predict(model, newdata = new_data)

# Print predictions
print(predictions)

