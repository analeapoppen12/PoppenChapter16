test_that('Fizz Buzz length of output is same as length of input', {
  expect_length(Fizz.Buzz(1:30), 30)
  expect_length(Fizz.Buzz(1:15), 15)
  expect_length(Fizz.Buzz(1:5), 5)
})

test_that('Fizz Buzz if zero, negative, or infity is inputed', {
  expect_error(Fizz.Buzz(-5:5))
  expect_error(Fizz.Buzz(-Inf))
})
