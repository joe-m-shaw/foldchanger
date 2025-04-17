calc_log2r <- function(obs, exp, digits = 3) {

  #' Calculate log2 ratios
  #'
  #' @param obs Observed reads
  #' @param exp Expected reads
  #' @param digits Number of decimal places
  #'
  #' @return Log2 ratio
  #' @export
  #'
  #' @examples calc_log2r(10, 5)

  log2 <- log2(obs/exp)

  return(round(log2, digits))

}
