def merge_sort(input)
  if input.size == 2
    if input[0] < input[1]
      return input
    else
      return [input[1], input[0]]
    end
  elsif input.size == 1
    return input
  end

  b = input.dup
  a = b.shift(input.size/2)

  merge(merge_sort(a), merge_sort(b))
end

def merge(a, b)
  results = []
  i=0
  j=0
  index=0
  while (index < (a.size + b.size))
    if i == a.size
      results[index]=b[j]
      j+=1
    elsif j == b.size
      results[index]=a[i]
      i+=1
    elsif a[i] < b[j]
      results[index]=a[i]
      i+=1
    else
      results[index]=b[j]
      j+=1
    end
    index+=1
  end
  results
end

input = 17.times.map{rand(10)}
puts "Input: #{input}"
puts "Output: #{merge_sort(input)}"
