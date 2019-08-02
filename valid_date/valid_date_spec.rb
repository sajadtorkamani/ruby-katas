valid_regexes = [
  '((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01])',
  '(02)-(0[1-9]|1[0-9]|2[0-8])',
  '(04|06|09|11)-(0[1-9]|[12][0-9]|3[01]))',
]

valid_date = Regexp.new('\[' + valid_regexes.join('|') + '\]')

describe :valid_date do
  it 'is the correct regex' do
    expect(valid_date =~ "[01-23]").to be_a Integer
    expect(valid_date =~ "[02-16]").to be_a Integer
    expect(valid_date =~ "[02-28]").to be_a Integer
    expect(valid_date =~ "[11-28]").to be_a Integer
    expect(valid_date =~ "[11-30]").to be_a Integer
    expect(valid_date =~ "ignored [08-11] ignored").to be_a Integer
    expect(valid_date =~ "[3] [12-04] [09-tenth]").to be_a Integer
    expect(valid_date =~ "[[[08-29]]]").to be_a Integer
    expect(valid_date =~ "[02-[08-11]04]").to be_a Integer
    #
    expect(valid_date =~ "[02-31]").to be_nil
    expect(valid_date =~ "[ 6-03]").to be_nil
    expect(valid_date =~ "[02-00]").to be_nil
    expect(valid_date =~ "[13-02]").to be_nil
  end
end