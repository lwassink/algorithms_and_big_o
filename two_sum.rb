def bad_two_sum(array, target)
  array.each_with_index do |el1, idx1|
    array.each_with_index do |el2, idx2|
      next if idx2 <= idx1

      return true if el1 + el2 == target
    end
  end

  false
end

def ok_two_sum(array, target)
  array.sort!
  start = 0
  finish = array.length - 1

  until start == finish
    if array[start] + array[finish] < target
      start += 1
    elsif array[start] + array[finish] > target
      finish -= 1
    else # they have to equal here
      return true
    end
  end
  false
end


def pair_sum?(array, target)
  hash = Hash.new(false)

  array.each do |ele|
    hash[ele] = true
  end

  array.each do |ele|
    return true if hash[target - ele]
  end
  false
end
