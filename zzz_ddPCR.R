checkPackages <- function(x){
  for (i in 1:length(x)){
    package <- as.character(x[i])
    if( package %in% installed.packages()[,1] == FALSE ){
      install.packages(package)
    } else { library(package, character.only = TRUE ) }
  }
}
# PACKAGES
checkPackages(c("xlsx"))

# end, HF van Essen 2016
cat("\n\nFunctions and packages have been loaded correctly.\n\n")
