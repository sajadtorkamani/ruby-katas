# frozen_string_literal: true

require_relative 'string_match'

describe 'string_match' do
  it 'returns true if asterisk in string_a can be replaced to get string_b' do
    expect(string_match('code*s', 'codewars')).to eq true
    expect(string_match('codewar*s', 'codewars')).to eq true
    expect(string_match('*s', 'codewars')).to eq true
    expect(string_match('*s', 's')).to eq true
    expect(string_match('s*', 's')).to eq true
    expect(string_match('aa*', 'aaa')).to eq true
    expect(string_match('*', 'codewars')).to eq true
  end

  it 'returns true if strings are already the same' do
    expect(string_match('c', 'c')).to eq true
  end

  it 'returns false if asterisk in string_a cannot be changed to get string_b' do
    expect(string_match('code*warrior', 'codewars')).to eq false
    expect(string_match('aaa*', 'aa')).to eq false
    expect(string_match('aaa*aaa', 'aaa')).to eq false
    expect(string_match('aa', 'aaa')).to eq false
    expect(string_match('aaa', 'aa')).to eq false
  end
end
