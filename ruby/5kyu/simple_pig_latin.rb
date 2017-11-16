# Move the first letter of each word to the end of it, then add 'ay' to the end of the word.
# If the word is a special character, leave the character as it is.

def pig_it(text)
  text = text.split(" ").map do |item|
    if item =~ /[[:punct:]]/
      item
    else
      item.chars.rotate(1).push("ay").join("")
    end
  end
  text.join(" ")
end

pig_it('Pig latin is cool ?') # ==> igPay atinlay siay oolcay ?
