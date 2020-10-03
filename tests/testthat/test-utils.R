test_that("Date-time converts to unix timestamp", {
  expect_equal(to_unix_timestamp(as.POSIXct("2020-01-01 12:15:59", tz = "GMT")), 1577880959L)
  expect_error(to_unix_timestamp("not_a_date"), "not a date-time object")
})
