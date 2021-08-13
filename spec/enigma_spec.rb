require './lib/enigma'


RSpec.describe Enigma do
  let(:message) { Hash.new(
    :message => "hello world", 
    :key => "02715", 
    :date => "040895"
    ) }
  let(:ciphertext) { Hash.new(
    :ciphertext => "keder ohulw", 
    :key => "02715", 
    :date => "040895"
  )}
  let(:enigma) { Enigma.new() }

  it "messages and ciphers defalt to an empty array" do
    expect(enigma.messages).to be_empty
    expect(enigma.ciphers).to be_empty
  end
  
end
