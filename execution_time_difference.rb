def my_min(array)
  min = nil
  array.each do |ele1|
    is_min = true
    array.each do |ele2|
      is_min = false if ele2 < ele1
    end
    min = ele1 if is_min
  end
  min
end



def my_min2(array)
  min = nil
  array.each do |ele|
    if min == nil || ele < min
      min = ele
    end
  end
  min
end


def largest_subsum1(array)
  subsets = []

  array.each_index do |idx1|
    (idx1...array.length).each do |idx2|
      subsets << array[idx1..idx2]
    end
  end

  subsets.max_by {|subset|  subset.reduce(:+) }.reduce(:+)

end
