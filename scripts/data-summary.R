data_summary <- function(df, measure, group) {
  df %>% group_by({{ group }}) %>% 
    summarise("mean_{{measure}}" := mean({{ measure }}),
              length_ = length({{ measure }}),
              dev = sd({{ measure }}),
              err = dev/sqrt(length_))
}


