pred_fc <- function(tumour_cpc, ncc, dir, ref_cpc = 2,
                    stroma_cpc = 2, digits = 1) {

  #' Predict fold change from copies per cell
  #'
  #' @param tumour_cpc Copies of gene locus per tumour cell
  #' @param ncc Neoplastic cell content
  #' @param dir Fold change direction, must be "gain" or "loss"
  #' @param stroma_cpc Copies of gene locus per stroma cell
  #' @param ref_cpc Copies of gene locus per reference cohort cell
  #' @param digits Digits to round the fold change to
  #'
  #' @return The predicted fold change
  #' @export
  #'
  #' @examples pred_fc(tumour_cpc = 109, ncc = 26, dir = "gain")

  check_dir(dir)

  # The number of copies of a reference locus per cell (2)
  # multiplied by 100 cells.
  ref_tc <- calc_tc(ref_cpc)

  tumour_tc <- calc_tc(cpc = tumour_cpc, cells = ncc)

  # Copies in normal cells - assume 2 copies per cell
  stroma_tc <- calc_tc(cpc = stroma_cpc, cells = 100 - ncc)

  copies_total <- tumour_tc + stroma_tc

  fc <- round(calc_fc(obs = copies_total, exp = ref_tc,
                      dir = dir), digits)

  return(fc)

}
