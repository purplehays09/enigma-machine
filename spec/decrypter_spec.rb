require './lib/decrypter'

RSpec.describe Decrypter do
  let(:decrypter) { Decrypter.new(
    "keder ohulw", 
    "02715", 
    "040895"
  )}

  it "can take a code key and date" do
    expect(decrypter.ciphertext).to eq("keder ohulw")
    expect(decrypter.key).to eq("02715")
    expect(decrypter.date).to eq("040895")
  end

  xit "can create keys" do
    expect(decrypter.key_maker).to eq([3, 27, 73, 20])
  end
  
  xit "can decrypt a single char" do
    expect(decrypter.char_move(
      decrypter.ciphertext[0], 
      decrypter.key_maker[0])
    ).to eq("k")
    expect(decrypter.char_move(
      decrypter.ciphertext[2], 
      decrypter.key_maker[2])
    ).to eq("d")
  end
  
  
  xit "can decrypt a ciphertext" do
    expect(decrypter.decrypt).to eq("hello world")
  end
  
end