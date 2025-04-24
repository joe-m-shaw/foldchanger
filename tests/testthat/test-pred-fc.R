# Test against examples in DOC6261

test_that("pred_fc works for a gain", {
  expect_equal(pred_fc(tumour_cpc = 3, ncc = 100, dir = "gain"),
               1.5)
})

test_that("pred_fc works for an amplification", {
  expect_equal(pred_fc(tumour_cpc = 10, ncc = 100, dir = "gain"),
               5)
})

test_that("pred_fc works for a monoallelic loss", {
  expect_equal(pred_fc(tumour_cpc = 1, ncc = 100, dir = "loss"),
               -2)
})

test_that("pred_fc works for a biallelic loss", {
  expect_equal(pred_fc(tumour_cpc = 0, ncc = 100, dir = "loss"),
               -Inf)
})

test_that("pred_fc works for gains with 0% NCC", {
  expect_equal(pred_fc(tumour_cpc = 3, ncc = 0, dir = "gain"),
               1)
})

test_that("pred_fc works for losses with 0% NCC", {
  expect_equal(pred_fc(tumour_cpc = 1, ncc = 0, dir = "loss"),
               -1)
})

# Test against built-in calculator in PanSolid Excel: WS143415_24030946

test_that("pred_fc works for gains with intermediate NCC", {
  expect_equal(pred_fc(tumour_cpc = 494.2222, ncc = 45,
                       dir = "gain", digits = 2),
               111.75)
})

test_that("pred_fc works for losses with intermediate NCC", {
  expect_equal(pred_fc(tumour_cpc = 0.01105, ncc = 45,
                       dir = "loss",digits = 2),
               -1.81)
})

test_that("pred_fc works with a dataframe", {

  df <- data.frame(
    x = c(2, 4, 10),
    y = c(100, 100, 100))

  df_predicted <- data.frame(
    x = c(2, 4, 10),
    y = c(100, 100, 100),
    z = c(1, 2, 5))

  expect_equal(df |>
                 dplyr::mutate(z = pred_fc(
                   tumour_cpc = x,
                   ncc = y,
                   dir = "gain"
                 )),
               df_predicted)
})
