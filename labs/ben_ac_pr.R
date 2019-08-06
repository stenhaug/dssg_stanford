
# the best way to represent things according to Ben
library(tidyverse)

data <- 
  tibble(proba = runif(1000)) %>% 
  mutate(outcome = as.integer(proba > runif(1000) + 0.2)) %>% 
  select(outcome, proba)

# functions


get_accuracy_top_n <- function(n, data){
  data %>% 
    arrange(desc(proba)) %>% 
    mutate(pred = c(rep(1, n), rep(0, nrow(data) - n))) %>% 
    summarize(acc = mean(outcome == pred)) %>% 
    pull(acc)
}

get_precision_top_n <- function(n, data){
  data %>% 
    arrange(desc(proba)) %>% 
    mutate(pred = c(rep(1, n), rep(0, nrow(data) - n))) %>%  
    filter(pred == 1) %>% 
    summarize(precision = mean(outcome == pred)) %>% 
    pull(precision)
}

get_recall_top_n <- function(n, data){
  data %>% 
    arrange(desc(proba)) %>% 
    mutate(pred = c(rep(1, n), rep(0, nrow(data) - n))) %>%  
    filter(outcome == 1) %>% 
    summarize(recall = mean(outcome == pred)) %>% 
    pull(recall)
}

#calculate

output_for_top_n <- 
  tibble(n = 0:nrow(data)) %>% 
  mutate(
    accuracy = n %>% map_dbl(get_accuracy_top_n, data),
    precision = n %>% map_dbl(get_precision_top_n, data),
    recall = n %>% map_dbl(get_recall_top_n, data)
  )


#graph

output_for_top_n %>% 
  gather(Measure, value, -n) %>% 
  ggplot(aes(x = n, y = value, color = Measure)) +
  geom_point() +
  scale_y_continuous(labels = scales::percent) +
  labs(
    x = "Number treated",
    y = ""
  )