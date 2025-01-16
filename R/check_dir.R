check_dir <- function(x) {

  #' Check fold change direction argument is appropriate
  #'
  #' @param x Fold change direction
  #'
  #' @return Errors if fold change not supplied as "gain" or "loss"
  #' @export
  #'
  #' @examples

  if(!x %in% c("gain", "loss")){
    stop("direction must be either gain or loss")
  }

}
