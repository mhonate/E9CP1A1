class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
  
    h = { 0=>'-----', 
        1=>'.----',
        2=>'..---',
        3=>'...--',
        4=>'....-',
        5=>'.....',
        6=>'-....',
        7=>'--...',
        8=>'---..',
        9=>'----.' }
    return h[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(4)
puts m.to_morse

#RESUELTO