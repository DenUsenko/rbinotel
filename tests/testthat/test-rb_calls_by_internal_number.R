test_that("Internal number is valid", {
  expect_error(rb_calls_by_internal_number("not_a_number"), "contains non-numeric")
})
