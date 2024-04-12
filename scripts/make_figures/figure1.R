library(tidyverse)
library(ggthemes)

cotton <- read_csv('data/analysis_data/cotton.csv')
maize <- read_csv('data/analysis_data/maize.csv')
soybean <- read_csv('data/analysis_data/soybean.csv')
rapeseed <- read_csv('data/analysis_data/rapeseed.csv')

colors <- c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b", 
            "#e377c2", "#7f7f7f", "#bcbd22", "#17becf", "#aec7e8", "#ffbb78",
            "#98df8a", "black")

cotton_plot <- cotton |>
  ggplot(
    aes(x = year, y = cotton, color = country)
  ) +
  geom_line(linetype="dotted") +
  theme_excel_new() +
  theme(
    legend.position = "left",
    legend.text = element_text(size = 7),
    legend.key.size = unit(0.2, "cm"),
    axis.title.x = element_text(size=12, vjust = -3),
    axis.title.y = element_text(size=12),
    plot.margin = margin(1, 1, 1, 1, "cm"),
    axis.text.x.top = element_text(margin = margin(0, 0, 0.5, 0, "cm"))
  ) +
  scale_color_manual(values = colors) +
  labs(x = 'Year', y = 'Cotton')

maize_plot <- maize |>
  ggplot(
    aes(x = year, y = maize, color = country)
  ) +
  geom_line(linetype="dotted") +
  theme_excel_new() +
  theme(
    legend.position = "left",
    legend.text = element_text(size = 7),
    legend.key.size = unit(0.2, "cm"),
    axis.title.x = element_text(size=12, vjust = -3),
    axis.title.y = element_text(size=12),
    plot.margin = margin(1, 1, 1, 1, "cm"),
    axis.text.x.top = element_text(margin = margin(0, 0, 0.5, 0, "cm"))
  ) +
  scale_color_manual(values = colors) +
  labs(x = 'Year', y = 'Maize')


soybean_plot <- soybean |>
  ggplot(
    aes(x = year, y = soybean, color = country)
  ) +
  geom_line(linetype="dotted") +
  theme_excel_new() +
  theme(
    legend.position = "left",
    legend.text = element_text(size = 7),
    legend.key.size = unit(0.2, "cm"),
    axis.title.x = element_text(size=12, vjust = -3),
    axis.title.y = element_text(size=12),
    plot.margin = margin(1, 1, 1, 1, "cm"),
    axis.text.x.top = element_text(margin = margin(0, 0, 0.5, 0, "cm"))
  ) +
  scale_color_manual(values = colors) +
  labs(x = 'Year', y = 'Soybean')


rapeseed_plot <- rapeseed |>
  ggplot(
    aes(x = year, y = rapeseed, color = country)
  ) +
  geom_line(linetype="dotted") +
  theme_excel_new() +
  theme(
    legend.position = "left",
    legend.text = element_text(size = 7),
    legend.key.size = unit(0.2, "cm"),
    axis.title.x = element_text(size=12, vjust = -3),
    axis.title.y = element_text(size=12),
    plot.margin = margin(1, 1, 1, 1, "cm"),
    axis.text.x.top = element_text(margin = margin(0, 0, 0.5, 0, "cm"))
  ) +
  scale_color_manual(values = colors) +
  labs(x = 'Year', y = 'Rapeseed')

ggsave("other/figures/figure1/cotton.png", plot = cotton_plot, width = 6, height = 4, dpi = 300)
ggsave("other/figures/figure1/maize.png", plot = maize_plot, width = 6, height = 4, dpi = 300)
ggsave("other/figures/figure1/rapeseed.png", plot = rapeseed_plot, width = 6, height = 4, dpi = 300)
ggsave("other/figures/figure1/soybean.png", plot = soybean_plot, width = 6, height = 4, dpi = 300)


