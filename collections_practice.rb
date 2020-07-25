def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort_by do |word|
    word.length
  end
end

def swap_elements(array)
  array[0], array[1], array[2] = array[0], array[2], array[1]
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  newarray = array.join(",")
  index = 0
  newarray.gsub(/./) do |character|
    case character
  when ' '
    index = 0
    character
  else
    index += 1
    (index % 3).zero? ? newarray.sub(\w[3], "$") : character
  end
end
  # array.each { |s| s.split(",") }
end
