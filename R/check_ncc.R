check_ncc <- function(x) {

  if(typeof(x) != "double") {
    stop("NCC must be supplied as number")
  }

  if(x < 0 | x > 100) {
    stop("NCC must be between 0-100%")
  }

  if(x > 0 & x <= 1) {
    warning(paste0("NCC is ", x, "%. Did you give NCC as a decimal?"))
  }

}
