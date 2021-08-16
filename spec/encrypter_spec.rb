require './lib/encrypter'

RSpec.describe Encrypter do
  let(:encrypter) { Encrypter.new(
    "hello world", 
    "02715", 
    "040895"
    ) }

  it "can take a code key and date" do
    expect(encrypter.message).to eq("hello world")
    expect(encrypter.key).to eq("02715")
    expect(encrypter.date).to eq("040895")
  end

  it "can create keys" do
    expect(encrypter.key_maker).to eq([3, 27, 73, 20])
  end
  
  it "can encrypt a single char" do
    expect(encrypter.char_move(
      encrypter.message[0], 
      encrypter.key_maker[0])
    ).to eq("k")
    expect(encrypter.char_move(
      encrypter.message[2], 
      encrypter.key_maker[2])
    ).to eq("d")
  end
  
  
  it "can encrypt a message" do
    expect(encrypter.encrypt.encryption).to eq("keder ohulw")
  end
  
  
end
