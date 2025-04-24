check_ncc <- function(ncc){
  #' Check neoplastic cell content is in correct format
  #'
  #' @param ncc Neplastic cell content in percentage format (10% not 0.1)
  #'
  #' @returns Errors if incorrect format supplied
  #' @export
  #'
  #' @examples check_ncc(100)

  stopifnot(is.numeric(ncc))

  stopifnot(ncc >= 0)

  stopifnot(ncc <= 100)

}
