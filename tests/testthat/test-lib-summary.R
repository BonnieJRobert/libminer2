test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("lib summary returns expected results", {
  expect_silent(result <- lib_summary())
  expect_equal(ncol(result), 2)
  expect_s3_class(result, "data.frame")
  expect_equal(names(result), c("library", "n_packages"))
  expect_type(result$library, "character")
  expect_type(result$n_packages, "integer")
  expect_gt(sum(result$n_packages),0)
})

test_that("lib_summary fails appropriately", {
  expect_error(lib_sumamry("foo"), )
})
