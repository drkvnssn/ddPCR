getThresholds <- function(x, algorithm = "hist")
{ 
  if(tolower(algorithm) == "hist" | tolower(algorithm) == "histogram")
  {
    results <- c(threshold.ch1 = getThresholdHist(x = x[,1]) ,threshold.ch2 = getThresholdHist(x = x[,2]))
  }
  if(tolower(algorithm) == "ranges")
  {
    results <- c(threshold.ch1 = getThresholdRanges(x = x[,1]) ,threshold.ch2 = getThresholdRanges(x = x[,2]))
  }
  if(tolower(algorithm) == "kmeans")
  {
    results <- c(threshold.ch1 = getThresholdRanges(x = x[,1]) ,threshold.ch2 = getThresholdRanges(x = x[,2]))
  }
  return(results)
}