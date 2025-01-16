change <- function(input, from, to) {
  #' Change between fold change and log2 ratios
  #'
  #' @param input Input value
  #' @param from The format to change from
  #' @param to The format to change to
  #'
  #' @return The calculated output
  #' @export
  #'
  #' @examples change(-1, from = "log2r", to = "fcloss")

  if(from == "log2r" & to == "fcgain") {

    output <- 2^input

  }

  if(from == "log2r" & to == "fcloss") {

    output <- -1/(2^input)

  }

  if((from == "fcgain" & to == "fcloss") |
     (from == "fcloss" & to == "fcgain")) {

    output <- -1 / input

  }

  if(from == "fcgain" & to == "log2r") {

    output <- log2(input)

  }

  if(from == "fcloss" & to == "log2r") {

    output <- log2(-1/input)

  }

  return(output)

}


