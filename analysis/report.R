# Load data
df_input <- readr::read_csv(
  here::here("output", "input.csv"),
  col_types = readr::cols(patient_id = readr::col_integer(),
                          age = readr::col_double())
)

# Create age histogram 
plot_age <- ggplot2::ggplot(data = df_input, 
                            ggplot2::aes(age, fill = sex)) + 
              ggplot2::geom_histogram(bins = 20) +
              ggplot2::labs(x = "Age (in years)",
                            y = "Count") +
              ggplot2::theme(text = ggplot2::element_text(size = 14)) +
              ggplot2::facet_wrap(~factor(sex, 
                                          levels = c("F", "M"),
                                          labels = c("Female", "Male"))) +
              ggplot2::scale_fill_viridis_d(end = .75)

plot_age

# Save output
ggplot2::ggsave(
  plot = plot_age,
  filename = "descriptive.png", 
  path = here::here("output")
  )
