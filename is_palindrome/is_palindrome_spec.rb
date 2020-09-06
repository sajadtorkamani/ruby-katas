require_relative 'is_palindrome'

describe :is_palindrome do
  it 'returns true if input is a palindrome' do
    expect(is_palindrome('racecar')).to eq true
    expect(is_palindrome('madam')).to eq true

    expect(is_palindrome('kitty')).to eq false
    expect(is_palindrome('foo')).to eq false
  end

  it 'returns nil if input is not a string' do
    expect(is_palindrome(1)).to eq nil
    expect(is_palindrome([])).to eq nil
  end
end
