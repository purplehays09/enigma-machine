require './lib/encrypter'

RSpec.describe Encrypter do
  let(:encrypter) { Encrypter.new("hello world", "02715", "040895") }

  it "can take a code key and date" do
    expect(encrypter.message).to eq("hello world")
    expect(encrypter.key).to eq("02715")
    expect(encrypter.date).to eq("040895")
  end

  it "can create keys" do
    expect(encrypter.key_maker).to eq([3, 27, 73, 20])
  end
  
  
  xit "can encrypt a message" do
    expect(encrypter.encrypt).to eq("keder ohulw")
  end
  
  
end
