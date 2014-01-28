def fib_it(n)
  return if n == 0
  return [0] if n == 1
  fib_arr = [0, 1]

  (n - 2).times do |i|
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end

  fib_arr
end


def fib_rc(n)
  arr = [0]
  return if n == 0
  return [0] if n == 1
  return [0,1] if n == 2


  arr << fib_rc(n - 1).last + arr.last
  arr
end