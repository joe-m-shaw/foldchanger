calc_log2r <- function(obs, exp) {

  #' Calculate log2 ratios
  #'
  #' @param obs Observed reads
  #' @param exp Expected reads
  #'
  #' @return Log2 ratio
  #' @export
  #'
  #' @examples calc_log2r(10, 5)

  log2 <- log2(obs/exp)

  return(log2)

}
