require './lib/encrypter'
require './lib/decrypter'

class Enigma
  attr_reader :messages, :ciphers
  def initialize()
    @messages = []
    @ciphers = []
  end
end