test_that("non-character input type", {
  expect_error(samplezoo(name = 123))
  expect_error(samplezoo(123))
})

test_that("name is incorrect", {
  expect_error(samplezoo(name = "extra-small"))
  expect_error(samplezoo("extrasmall"))
  expect_error(samplezoo("samll"))
  expect_error(samplezoo(name = "samll"))
})

test_that("needs quotations", {
  expect_error(samplezoo(small))
})
