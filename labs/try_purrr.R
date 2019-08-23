# Interactive purrr tutorial from Ben

library('tidyverse')
a <- list(1:3, 4:6) # list of two vectors
b <- list(7:9, 10:12)

x %>% map(median) # length will be the same, output is list of two elements
# apply function to each element of a list

x %>% map_dbl(median) # just get vector of two doubles
# map_<type>

x %>% lapply(median)
x %>% sapply(median)
# equivalent outputs

x %>% map_dbl( ~ .[3] + .[2]) 
# ~ = anonymous function 
# . = the vector
# take the vector and grab the third element

get_third <- function(x) x[3]  # named function
x %>% map_dbl(get_third)

# purrr allows for anonymous functions, while lapply/sapply do not


take_mean_and_sum <- function(a, b){
  mean(a) + mean(b)
}

map2_dbl(x, y, take_mean_and_sum) # you can't really pipe


map2_dbl(a, b, ~mean(.x)+mean(.y)) # always .x and .y regardless abt

# pmap allows for any number:  ..1, ..2, ..3


data <- 
  iris %>% # 150 row data frame
  as_tibble() %>%
  nest(-Species) %>% # put it into a dataframe of dataframes (50)
  mutate(num = 1:3)

data$data[[2]]

data %>% 
  unnest()

data %>% 
  mutate(new = num + 1:3) # mutate works better for vectorized functions

# BUT to 
data$data[[1]] %>% nrow()

# this doesnt work - doesnt do anything
#  this is because nrow isn't vectorized
data %>% 
  mutate(
    num_rows = nrow(data)
  ) 

# need to use map within this! (make sure map_dbl and not map)
data %>% 
  mutate(
    num_rows= data %>% map_dbl(nrow)
  ) 


# this is the biggest gains for simulation

sim_data <- function(nrows){
  tibble(
    x = rnorm(nrows, 0, 1) # sample from a std normal 
  ) %>%
    mutate(
      y = x + rnorm(nrows, 0, 0.1) # add some random noise
    )
}

out <- sim_data(10)

# let's create simulated data for each of 10 to 1000 rows
out <- tibble(
  nrows = 10:1000 
) %>%
  mutate(
    data = nrows %>% map(sim_data) 
    # need to use map b/c function is not vectorized
  )

# fit a linear model to each of these
out2 <- out %>%
  mutate(
    model = data %>% map( ~ lm(y ~ x, data = .)) 
    # names of the columns, . is what you're piping in
  )

# --> in each row we have a linear model object

out2$model[[3]]
coef(out2$model[[3]]) # named vector

# lets extract things from from the model!
out2 %>%
  mutate(
    intercept = model %>% map_dbl(~ coef(.)[1]),
    slope = model %>% map_dbl(~ coef(.)[2])
  ) %>%
# and plot to see how it changes based on the number of rows of data
  ggplot(aes(x= nrows, y= slope)) +
  geom_point(alpha = 0.2)

# another function
rerun(1000, sim_data(10)) # call sim_data 1000 times

