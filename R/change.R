change <- function(input, from, to) {

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


