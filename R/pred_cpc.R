pred_cpc <- function(fc, ncc, dir, ref_cpc = 2, stroma_cpc = 2) {

  check_dir(dir)

  ref_tc <- calc_tc(ref_cpc)

  total_copies <- fc * ref_tc

  stroma_tc <- calc_tc(cpc = stroma_cpc, cells = 100-ncc)

  tumour_tc <- total_copies - stroma_tc

  tumour_cpc <- tumour_tc / ncc

  return(tumour_cpc)

}
