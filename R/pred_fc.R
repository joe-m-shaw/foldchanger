pred_fc <- function(tumour_cpc, ncc, dir, ref_cpc = 2, digits = 2) {

  check_dir(dir)

  # The number of copies of a reference locus per cell (2)
  # multiplied by 100 cells.
  ref_tc <- calc_tc(ref_cpc)

  tumour_tc <- calc_tc(cpc = tumour_cpc, cells = ncc)

  # Copies in normal cells - assume 2 copies per cell
  stroma_tc <- calc_tc(cpc = ref_cpc, cells = 100 - ncc)

  copies_total <- tumour_tc + stroma_tc

  fc <- round(calc_fc(obs = copies_total, exp = ref_tc,
                      dir = dir), digits)

  return(fc)

}
