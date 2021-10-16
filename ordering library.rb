def alphabetize(arr, rev=false)
  arr.sort!
  if rev
  arr.reverse!
  else
  arr
  end
end

numbers = [1, 7, 3, 12, 9]
puts alphabetize(numbers)
