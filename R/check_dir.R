check_dir <- function(x) {

  if(!x %in% c("gain", "loss")){
    stop("direction must be either gain or loss")
  }

}
