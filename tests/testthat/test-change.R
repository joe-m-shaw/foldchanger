test_that("change works from log2r to fcgain", {
  expect_equal(change(1, from = "log2r", to = "fcgain"),
               2)
})

test_that("change works from log2r to fcloss", {
  expect_equal(change(-1, from = "log2r", to = "fcloss"),
               -2)
})
