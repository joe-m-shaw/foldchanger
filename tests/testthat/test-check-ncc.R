test_that("check_ncc errors when non-numeric supplied", {
  expect_error(check_ncc("one"))
})

test_that("check_ncc errors when negative number supplied", {
  expect_error(check_ncc(-1))
})

test_that("check_ncc errors when number above 100 is supplied", {
  expect_error(check_ncc(101))
})

test_that("check_ncc does not error with acceptable input", {
  expect_no_error(check_ncc(93.4))
})

test_that("check_ncc does not error with 0 input", {
  expect_no_error(check_ncc(0))
})

test_that("check_ncc errors when no ncc supplied", {
  expect_error(check_ncc())
})
