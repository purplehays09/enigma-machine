require './lib/encrypter'
require './lib/decrypter'

class Enigma
  attr_reader :messages, :ciphers
  def initialize()
    @messages = []
    @ciphers = []
  end
  
  def add_message(message, key, date)
    encrypter = Encrypter.new(
      message,
      key,
      date
    )
    messages << encrypter
    encrypter
  end
  
  def add_cipher(ciphertext, key, date)
    decrypter = Decrypter.new(
      ciphertext,
      key,
      date
    )
    ciphers << decrypter
    decrypter
  end
  
end