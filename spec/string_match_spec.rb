# frozen_string_literal: true

require_relative '../src/string_match'

describe 'string_match' do
  it 'returns true if asterisk in string_a can be replaced to get string_b' do
    expect(string_match('code*s', 'codewars')).to be true
    expect(string_match('codewar*s', 'codewars')).to be true
    expect(string_match('*s', 'codewars')).to be true
    expect(string_match('*s', 's')).to be true
    expect(string_match('s*', 's')).to be true
    expect(string_match('aa*', 'aaa')).to be true
    expect(string_match('*', 'codewars')).to be true
  end

  it 'returns true if strings are already the same' do
    expect(string_match('c', 'c')).to be true
  end

  it 'returns false if asterisk in string_a cannot be changed to get string_b' do
    expect(string_match('code*warrior', 'codewars')).to be false
    expect(string_match('aaa*', 'aa')).to be false
    expect(string_match('aaa*aaa', 'aaa')).to be false
    expect(string_match('aa', 'aaa')).to be false
    expect(string_match('aaa', 'aa')).to be false
  end
end
