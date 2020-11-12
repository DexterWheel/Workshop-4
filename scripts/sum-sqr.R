sum_sq <- function(dataf, measure, group) {
  dataf %>% group_by({{ group }}) %>% 
    summarise(ss = sum(({{ measure }} - mean({{ measure }}))^2))
}
