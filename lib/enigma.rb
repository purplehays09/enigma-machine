require './lib/encrypter'
require './lib/decrypter'

class Enigma
  attr_reader :messages, :ciphers
  def initialize()
    @messages = []
    @ciphers = []
  end
  
  def add_message(message,key,date)
    puts "\n\nmessage\n#{message}\nkey\n#{key}\ndate\n#{date}\n\n"
    Encrypter.new(
      message,
      key,
      date
    )
  end
  
end