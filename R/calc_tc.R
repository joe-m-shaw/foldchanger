calc_tc <- function(cpc, cells = 100) {

  #' Calculate total copies from copies per cell
  #'
  #' @param cpc Copies per cell
  #' @param cells Total number of cells. Defaults to 100.
  #'
  #' @return Total copies of a gene locus
  #' @export
  #'
  #' @examples calc_tc(10, 100)

  tc <- cpc * cells

  return(tc)

}
