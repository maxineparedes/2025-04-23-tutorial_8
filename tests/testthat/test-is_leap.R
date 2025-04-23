library(testthat)
source("R/is_leap.R")

test_that("`is_leap` works (TRUE case)", {
  expect_equal(is_leap(1000), TRUE)
})

test_that("`is_leap` works (FALSE case)", {
  expect_equal(is_leap(2021), FALSE)
})

test_that("`is_leap` requires an input of a positive non-zero value", {
  expect_error(is_leap(0))
})

test_that("`is_leap` requires an input of a positive non-zero value", {
  expect_error(is_leap(-2002))
})

test_that("`is_leap` requires an input of an integer value, not a string", {
  expect_error(is_leap("the year is 2000 BC"))
})

test_that("`is_leap` requires an input of an integer value, not a float", {
  expect_error(is_leap(321.123))
})