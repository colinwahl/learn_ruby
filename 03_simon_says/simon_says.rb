
def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, n)
  final = string
  if n == 1
    return final
  else
    (n-1).times do 
      final = final + " " + string
    end
  end
  return final
end

def start_of_word(string, n)
  return string[0..n-1]
end

def first_word(string)
  array = string.split(" ")
  return array[0]
end

def titleize(string)
  puncs = ["and", "the", "to", "of", "by", "from", "or", "over"]
  array = string.split(" ")
  array.map! do |x|
    if x == array[0]
      x.capitalize
    elsif puncs.include? x.downcase
      x.downcase
    else
      x.capitalize
    end
  end
  return array.join(" ")
end

