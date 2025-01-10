calc_fc <- function(obs, exp, dir) {

  check_dir(dir)

  if(dir == "gain") {

    fc <- obs / exp

  }

  if(dir == "loss") {

    fc <- -(exp/obs)

  }

  return(fc)
}
