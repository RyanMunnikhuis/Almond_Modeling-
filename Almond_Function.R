# Model parameters representing yield anomalies (ton acre^-1)
# temp_param_1 & temp_param_2 denoting February minimum temperature from the year prior to harvest
# precip_param_1 & precip_param_2 denoting January precipitation variables
almond_model <- function(monthly_temp, monthly_precip, temp_param_1 = -0.015, temp_param_2 = -0.0046, precip_param_1 = -0.07, precip_param_2 = 0.0043, constant = 0.28) {
  
  # Model function to find yield anomalies per month per year 
  yield_anomaly <- (temp_param_1*monthly_temp + temp_param_2*monthly_temp^2 + precip_param_1*monthly_precip + precip_param_2*monthly_precip^2 + constant)
  
  return(yield_anomaly)
}

