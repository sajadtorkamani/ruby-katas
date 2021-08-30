# frozen_string_literal: true

valid_regexes = [
  '((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01])',
  '(02)-(0[1-9]|1[0-9]|2[0-8])',
  '(04|06|09|11)-(0[1-9]|[12][0-9]|3[01]))'
]

valid_date = Regexp.new('\[' + valid_regexes.join('|') + '\]') # rubocop:disable Style/StringConcatenation

describe 'valid_date' do
  it 'validates valid date formats' do
    ['[01-23]', '[02-16]', '[02-28]', '[11-28]', '[11-30]', 'ignored [08-11] ignored',
     '[3] [12-04] [09-tenth]', '[[[08-29]]]', '[02-[08-11]04]'].each do |date|
      expect(valid_date.match?(date)).to be true
    end
  end

  it 'validates invalid date formats' do
    ['[02-31]', '[ 6-03]', '[02-00]', '[13-02]'].each do |date|
      expect(valid_date.match?(date)).to be false
    end
  end
end
