# frozen_string_literal: true

require_relative '../caesar_cipher'

describe '#caesar_cipher' do
  it 'shifts characters by a given factor' do
    result = caesar_cipher('What a string!', 5)
    expect(result).to eq('Bmfy f xywnsl!')
  end

  it 'preserves uppercase and lowercase letters' do
    result = caesar_cipher('WhAt A String!', 5)
    expect(result).to eq('BmFy F Xywnsl!')
  end

  it "wrap around the alphabet when reaching z" do
    result = caesar_cipher('zoo on Sunday', 5)
    expect(result).to eq('ett ts Xzsifd')
  end

  it "ignores special characters" do
    result = caesar_cipher('WhAt a $ String!', 5)
    expect(result).to eq('BmFy f $ Xywnsl!')
  end

  it "handles shifts larger than the alphabet" do
    result = caesar_cipher('What a string!', 27)
    expect(result).to eq('Xibu b tusjoh!')
  end
end


