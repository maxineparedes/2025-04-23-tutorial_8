library(testthat)
source("R/is_leap.R")

testthat("`is_leap` works (TRUE case)", {
  expect_equal(is_leap(1000), TRUE)
})

testthat("`is_leap` works (FALSE case)", {
  expect_equal(is_leap(2021), FALSE)
})

testthat("`is_leap` requires an input of a positive non-zero value", {
  expect_error(is_leap(0))
})

testthat("`is_leap` requires an input of a positive non-zero value", {
  expect_error(is_leap(-2002))
})

testthat("`is_leap` requires an input of an integer value, not a string", {
  expect_error(is_leap("the year is 2000 BC"))
})

testthat("`is_leap` requires an input of an integer value, not a float", {
  expect_error(is_leap(321.123))
})