almond_price_flucutation <- function(yield_anomaly, mean_almond_price, num_of_acres = 1, base_yield = 1, cost = 2000) {
  
  price <- mean_almond_price - ((mean_almond_price * .10) * yield_anomaly)
  
  total_anom <- num_of_acres * yield_anomaly
  
  total_base_yield <- num_of_acres * base_yield
  
  total_yield <- total_base_yield + total_anom
  
  money <- total_yield * mean_almond_price
  
  total_cost <- cost * num_of_acres
  
  profit <- money - total_cost
  
  
  return(profit)
  
  }


