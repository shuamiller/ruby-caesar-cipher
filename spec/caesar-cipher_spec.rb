require '../lib/caesar-cipher'

describe "#caesar_cipher" do
  it "returns a string" do
    expect(caesar_cipher("Success", 1)).to be_an_instance_of(String)
  end

  it "returns characters with their original case" do
    expect(caesar_cipher("Success", 4)).to eql("Wyggiww")
  end

  it "returns strings with non-alphanumeric characters unchanged" do
    expect(caesar_cipher("Success and huzzah!", 1)).to eql ("Tvddftt boe ivaabi!")
  end

  it "starts at the beginning of the alphabet after reaching the end" do
    expect(caesar_cipher("Success", 20)).to eql("Mowwymm")
  end
end