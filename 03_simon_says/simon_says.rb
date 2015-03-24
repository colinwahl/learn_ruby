
def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, n)
  return string * n * " "
end

def start_of_word(string, n)
  return string[0..n]
end

def first_word(string)
  array = string.split(" ")
  return array[0]
end

def titleize(string)
  array = string.split(" ")
  array.each do |t|
    if(t == "a" || "the" || "of" || "on" || "upon" || "in" || "with" || "an" || "but" || "and" || "or")
      continue
    end
    t.capitalize
  end
  return array.join()
end
