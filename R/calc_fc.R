calc_fc <- function(obs, exp, dir) {

  #' Calculate fold change from observed and expected depth-of-coverage
  #'
  #' @param obs Observed depth-of-coverage
  #' @param exp Expected depth-of-coverage
  #' @param dir The direction of fold change to calculate - "gain" or "loss"
  #'
  #' @return The calculated fold change
  #' @export
  #'
  #' @examples calc_fc(10, 2, dir = "gain")

  check_dir(dir)

  if(dir == "gain") {

    fc <- obs / exp

  }

  if(dir == "loss") {

    fc <- -(exp/obs)

  }

  return(fc)
}
