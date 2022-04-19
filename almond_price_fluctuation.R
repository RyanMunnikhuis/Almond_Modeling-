almond_price_flucutation <- function(yield_anomaly, mean_almond_price, num_of_acres = 1, avg_pounds = 2000) {
  almond_price <-(mean_almond_price - (mean_almond_price * yield_anomaly * .001))
    return(almond_price)
  }


