library(ggplot2)
library(MASS) # this uses an additional dependency we do not cover in the workshop
library(DESeq2)

# An example of how to plot the distribution
# However, DESeq2 already has other diagnostic plots (e.g.: dispersion plot)

# Fit the model
dds <- DESeq(dds)

# Extract raw counts key paramters for NB distribution
raw_counts <- counts(dds)

sizes <- numeric(nrow(raw_counts))
mus <- numeric(nrow(raw_counts))
fit_success <- logical(nrow(raw_counts))

# For each gene to fit the negative binomial distribution
for (i in 1:nrow(raw_counts)) {
  gene_counts <- raw_counts[i, ]
  try({
    fit <- fitdistr(gene_counts, "Negative Binomial")
    sizes[i] <- fit$estimate['size']
    mus[i] <- fit$estimate['mu']
    fit_success[i] <- TRUE
  }, silent = TRUE)
}

# Calculate proportion of successful fits and summarize
fit_rate <- mean(fit_success)
fit_rate

summary(sizes[fit_success])
summary(mus[fit_success])


# Plot
fit_data <- data.frame(size = sizes[fit_success], mu = mus[fit_success])

# Histogram of the size/dispersion
ggplot(fit_data, aes(x = size)) +
  geom_histogram(binwidth = 0.1, fill = "#0073C2FF", color = "black", alpha = 0.7) +
  theme_minimal(base_size = 15) +
  labs(title = "Distribution of Negative Binomial Size",
       x = "Size", y = "Frequency") +
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = "bold"))

# Histogram of the mu parameter
ggplot(fit_data, aes(x = mu)) +
  geom_histogram(binwidth = 0.1, fill = "#FC4E07", color = "black", alpha = 0.7) +
  theme_minimal(base_size = 15) +
  labs(title = "Distribution of Negative Binomial Mu",
       x = "Mu", y = "Frequency") +
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = "bold"))


