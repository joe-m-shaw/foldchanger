# Test against examples in DOC6261

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

test_that("pred_cpc works for normal diploid state on gain", {
  expect_equal(pred_cpc(fc = 1, ncc = 100, dir = "gain"),
               2)
})

test_that("pred_cpc works for normal diploid state on loss", {
  expect_equal(pred_cpc(fc = -1, ncc = 100, dir = "loss"),
               2)
})

test_that("pred_cpc works when ref_cpc is altered", {
  expect_equal(pred_cpc(fc = -1, ncc = 100,
                        dir = "loss",
                        ref_cpc = 3),
               3)
})

# Test against built-in calculator in PanSolid Excel: WS143415_24030946

test_that("pred_cpc works for amplification when NCC is not 100%",{
  expect_equal(pred_cpc(fc = 111.75, ncc = 93,
                        dir = "gain", digits = 6),
               240.172043)
})

test_that("pred_cpc works for biallelic deletion when NCC is not 100%", {
  expect_equal(pred_cpc(fc = -14.05, ncc = 93,
                        dir = "loss", digits = 5),
               0.00253)
})

test_that("pred_cpc works for amplifications when NCC is low", {
  expect_equal(pred_cpc(fc = 111.75, ncc = 1,
                        dir = "gain", digits = 0),
               22152)
})

test_that("pred_cpc works for losses when NCC is low", {
  expect_equal(pred_cpc(fc = -14.05, ncc = 1,
                        dir = "loss", digits = 2),
               -183.77)
})
