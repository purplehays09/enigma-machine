class Decrypter
  ALPHA = ("a".."z").to_a << " "
  attr_reader :ciphertext, :key, :date
  def initialize(ciphertext, key, date)
    @ciphertext = ciphertext
    @key = key
    @date = date
  end

  def key_maker
    split_key = [
      key[0, 2].to_i,
      key[1, 2].to_i,
      key[2, 2].to_i,
      key[3, 2].to_i,
    ]

    modifier = (date.to_i ** 2).to_s[-4, 4]

    4.times { |time| split_key[time] += modifier[time].to_i}

    split_key
  end

  def char_move(char,distance)
    char_start = ALPHA.index(char)
    ALPHA[(char_start - distance) % 27]
  end

  def decrypt
    response = ""
    shifter = key_maker

    ciphertext.length.times do |iter|
      response += char_move(
        ciphertext[iter],
        shifter[(iter) % 4]
      )
    end
    response
  end
  
end