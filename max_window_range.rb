def windowed_max_range(array, window_size)
  current_max_range = 0
  start = 0
  finish = window_size - 1

  while finish < array.length # O(n) ( window_size * 2 )
    max, min = array[start], array[start] # 1
    (start..finish).each do |idx| # window_size ( 2 )
      max = array[idx] if array[idx] > max
      min = array[idx] if array[idx] < min
    end

    current_max_range = max - min if max - min > current_max_range
    start += 1
    finish += 1
  end

  current_max_range
end # O(n * m)

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6
