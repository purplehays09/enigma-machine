class Encrypter
  ALPHA = ("a".."z").to_a << " "
  attr_reader :message, :key, :date
  def initialize(message, key, date)
    @message = message
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
    ALPHA[(char_start + distance) % 27]
  end

  def encrypt
    response = ""
    shifter = key_maker

    message.length.times do |iter|
      response += char_move(
        message[iter],
        shifter[(iter) % 4]
      )
    end
    {
      :encryption => response,
      :key => key,
      :date => date
    }
  end
  
end