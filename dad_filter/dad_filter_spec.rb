require_relative 'dad_filter'

describe 'dad_filter' do
  it 'removes extra commas from input' do
    expect(dad_filter("all this,,,, used to be trees,,,,,,")).to eq "all this, used to be trees"
    expect(dad_filter("Listen,,,, kid,,,,,,")).to eq "Listen, kid"
    expect(dad_filter("Luke,,,,,,,,, I am your father,,,,,,,,,  ")).to eq "Luke, I am your father"
    expect(dad_filter("i,, don't believe this round earth,,, show me evadence!!"))
      .to eq "i, don't believe this round earth, show me evadence!!"
    expect(dad_filter("Dead or alive,,,, you're coming with me,,,   ")).to eq "Dead or alive, you're coming with me"
  end
end
