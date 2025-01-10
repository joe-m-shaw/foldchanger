test_that("calc_fc works", {
  expect_equal(calc_fc(obs = 10, exp = 2, dir = "gain"), 5)
})
