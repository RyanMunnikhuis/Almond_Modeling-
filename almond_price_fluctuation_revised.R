# yield_anomaly is the distribution of almond yield above or below the mean almond yield.
# (yield_anomaly is unit less)
# mean_almond_price is the net average price per ton of almonds from last years yield 
# num_of_acres is the number of acres you are calculating for 
# base_yield is the average amounts of tons produced per acre in a normal year


almond_price_flucutation_revised <- function(yield_anomaly, mean_almond_price, num_of_acres, base_yield) {
  # Calculate the almond price based on anomaly (more almonds results in lower 
  #price since supply is higher and less increases price since there is 
  #less supply (assuming equal demand for both)). 
  
  price <- mean_almond_price - ((mean_almond_price * .01) * yield_anomaly)
  
  # Calculate total base yield (average tons per acre produced per region)
  total_base_yield <- base_yield/num_of_acres 
  
  #Cumulative numbers of almonds produced (in tons) based on total base yield and anomaly. 
  total_yield <- total_base_yield * yield_anomaly
  
  # Calculate the estimated total profit for almond production
  profit <- total_yield * price
  
  return(profit)
  
}
