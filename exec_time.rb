list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list)
  list.each do |i|
    min = true
    list.each do |j|
      if i != j
        if i > j
          min = false
        end
      end
    end
    if min
      return i
    end
  end
  nil
end

# p my_min(list)  # =>  -5 O(n^2)

def my_min_2(list)
  min = nil

  list.each do |num|
    min = num if min.nil? || num < min
  end

  min
end

# p my_min_2(list)  # =>  -5 O(n)

def my_min_3(list)
  subs = []

  list.each_index do |i|
    list.each_index do |j|
      unless i > j
        subs << list[i..j]
      end
    end
  end

  subs.map do |sub|
    sub.reduce(:+)
  end.max
end

list = [5, 3, -7]
# p my_min_3(list) #O(n^2)


def my_min_4(list)
  max = 0
  running_max = 0

  list.each do |num|na
    running_max += num
    if running_max > max
      max = running_max
    end
    if running_max < 0
      running max = 0
    end
  end
  max
end

p my_min_4(list)
