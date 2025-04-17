test_that("pred_cpc works for monoallelic deletions", {
  expect_equal(pred_cpc(fc = -2, ncc = 100, dir = "loss"),
               1)
})

test_that("pred_cpc works for biallelic deletions", {
  expect_equal(pred_cpc(fc = -Inf, ncc = 100, dir = "loss"),
               0)
})

test_that("pred_cpc works for a gain", {
  expect_equal(pred_cpc(fc = 1.5, ncc = 100, dir = "gain"),
               3)
})

test_that("pred_cpc works for an amplification", {
  expect_equal(pred_cpc(fc = 5, ncc = 100, dir = "gain"),
               10)
})
