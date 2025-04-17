test_that("calc_fc works for gains", {
  expect_equal(calc_fc(obs = 10, exp = 2, dir = "gain"),
               5)
})

test_that("calc_fc works for loss", {
  expect_equal(calc_fc(obs = 1, exp = 2, dir = "loss"),
               -2)
})

