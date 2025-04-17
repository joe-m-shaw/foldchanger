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
