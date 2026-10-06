# frozen_string_literal: true

def caesar_cipher(string, factor)
  shift = factor % 26

  result = string.chars.map do |letter|
    case letter
    when 'a'..'z'
      base = 'a'.ord
      (((letter.ord - base + shift) % 26) + base).chr
    when 'A'..'Z'
      base = 'A'.ord
      (((letter.ord - base + shift) % 26) + base).chr
    else
      letter
    end
  end

  result.join
end

p caesar_cipher('What a string!', 5)
# => "Bmfy f xywnsl!"
