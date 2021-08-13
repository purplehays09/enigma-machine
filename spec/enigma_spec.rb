require './lib/enigma'


RSpec.describe Enigma do
  let(:message) { {
    :message => "hello world", 
    :key => "02715", 
    :date => "040895"
   } }
  let(:ciphertext) { {
    :ciphertext => "keder ohulw", 
    :key => "02715", 
    :date => "040895"
  } }
  let(:enigma) { Enigma.new() }

  it "messages and ciphers defalt to an empty array" do
    expect(enigma.messages).to be_empty
    expect(enigma.ciphers).to be_empty
  end
  
  it "adds messages" do
    expect(enigma.add_message(
      message[:message],
      message[:key],
      message[:date]
    ).encrypt).to eq("keder ohulw")
  end
  
  it "decodes cypher" do
    expect(enigma.add_cipher(
      ciphertext[:ciphertext],
      message[:key],
      message[:date]
    ).decrypt).to eq("hello world")
  end
  
end
