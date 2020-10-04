test_that("Full endpoint url is build", {
  expect_equal(build_endpoint_url("test/endpoint"), "https://api.binotel.com/api/4.0/test/endpoint.json")
  expect_error(build_endpoint_url(123), "is not of class 'character'")
})
