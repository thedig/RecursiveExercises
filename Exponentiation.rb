
def recursion_1(b,n, count = 0)
  return 1 if n == 0
  count += 1
  p count
  b * recursion_1(b,n-1,count)
end


def recursion_2(b,n,count = 0)
  return 1 if n == 0
  count += 1
  p count

  if n.even?
    num = (recursion_2(b, n / 2, count))
    num * num
  else
    num = (recursion_2(b, (n - 1) / 2, count))
    b * num * num
  end


end