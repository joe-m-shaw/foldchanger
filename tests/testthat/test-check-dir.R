test_that("check_dir throws error for gain misspell", {
  expect_error(check_dir("gan"), "direction must be either gain or loss")
})

test_that("check_dir throws error for loss misspell", {
  expect_error(check_dir("lss"), "direction must be either gain or loss")
})
