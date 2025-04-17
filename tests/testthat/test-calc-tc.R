test_that("calc_tc works with default cells input", {
  expect_equal(calc_tc(4),
               4*100)
})

test_that("calc_tc works with new cells input", {
  expect_equal(calc_tc(cpc = 4, cells = 85),
               85*4)
})
