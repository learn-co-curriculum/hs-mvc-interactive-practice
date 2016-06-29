def randomize(string)
  letters = string.split
  result = ""
  letters.length.times do
    result += letters.shuffle!.pop + " "
  end
  result.capitalize
end
