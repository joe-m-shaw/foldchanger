test_that("change works from log2r to fcgain", {
  expect_equal(change(1, from = "log2r", to = "fcgain"),
               2)
})

test_that("change works from log2r to fcloss", {
  expect_equal(change(-1, from = "log2r", to = "fcloss"),
               -2)
})

test_that("change works from fcgain to fcloss", {
  expect_equal(change(1, from = "fcgain", to = "fcloss"),
               -1)
})

test_that("change works from fcgain to log2r", {
  expect_equal(change(2, from = "fcgain", to = "log2r"),
               1)
})

test_that("change works from fcloss to log2r", {
  expect_equal(change(-2, from = "fcloss", to = "log2r"),
               -1)
})
