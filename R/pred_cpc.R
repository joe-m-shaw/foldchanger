pred_cpc <- function(fc, ncc, dir, ref_cpc = 2, stroma_cpc = 2) {

  #' Predict copies per cell
  #'
  #' @param fc Fold change
  #' @param ncc Neoplastic cell content (0-100)
  #' @param dir Fold change direction, must be "gain" or "loss"
  #' @param ref_cpc Copies per cell for reference cohort
  #' @param stroma_cpc Copies per cell for patient stroma
  #'
  #' @return Copies per cell
  #' @export
  #'
  #' @examples

  check_dir(dir)

  check_ncc(ncc)

  ref_tc <- calc_tc(ref_cpc)

  total_copies <- fc * ref_tc

  stroma_tc <- calc_tc(cpc = stroma_cpc, cells = 100-ncc)

  tumour_tc <- total_copies - stroma_tc

  tumour_cpc <- tumour_tc / ncc

  return(tumour_cpc)

}
