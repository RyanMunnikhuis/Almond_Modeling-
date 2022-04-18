almond_price_flucutation <- function(yield_anomaly, mean_almond_price) {
  almond_price <-( mean_almond_price - (yield_anomaly *.01))
    return(almond_price)
  }

almond_price_flucutation()
