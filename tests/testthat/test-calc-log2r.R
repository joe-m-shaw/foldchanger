test_that("calc_log2r works for normal", {
  expect_equal(calc_log2r(obs = 100, exp = 100),
               0)
})

test_that("calc_log2r works for duplication", {
  expect_equal(calc_log2r(obs = 150, exp = 100),
               0.585)
})

test_that("calc_log2r works with rounding", {
  expect_equal(calc_log2r(obs = 150, exp = 100,
                          digits = 1),
               0.6)
})

