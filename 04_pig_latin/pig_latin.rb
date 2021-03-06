
def vowel?(char)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  
  vowels.each do |t|
    if char == t
      return true
    end
  end
  
  return false
end

def translate(string)  
  words = string.split(" ")
  if(words.length > 1)
    final = ""
    words.each do |t|
      final = final + translate(t) + " "
    end
    return final[0...-1]
  end

  if(vowel? string[0..0])
    return string + "ay"
  else
    array = string.split("")
    if(vowel? array[1])
      final = array.rotate.join
      return final + "ay"
    elsif(vowel? array[2])
      final = array.rotate(2).join
      return final + "ay"
    else
      final = array.rotate(3).join
      return final + "ay"
    end
  end
end
