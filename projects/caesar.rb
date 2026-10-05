def caesar_cipher(string, factor)
  bornes = {'a':97, 'z': 122, 'A':65, 'Z': 90}

  res = string.chars.map do |chr| 
    ord = chr.ord

    next chr if !ord.between?(bornes[:a], bornes[:z]) && !ord.between?(bornes[:A], bornes[:Z])

    min, max = ord < 97 ? [bornes[:A],bornes[:Z]] : [bornes[:a],bornes[:z]]
    ciph = ord + factor

    (min + ((ciph - min) % (max - min + 1))).chr

  end
  res.join
end

puts caesar_cipher("What a string!", 5)