require_relative 'bin_rota'

describe 'bin_rota' do
  it 'returns correct result' do
    expect(bin_rota([['Bob', 'Nora'], ['Ruby', 'Carl']])).to eq ['Bob', 'Nora', 'Carl', 'Ruby']
    expect(bin_rota([['Dee', 'Robert'], ['Robert', 'Dee']])).to eq ['Dee', 'Robert', 'Dee', 'Robert']
    expect(bin_rota([['Sam', 'Nina', 'Tim', 'Helen', 'Gurpreet', 'Edward', 'Holly', 'Eliza'], ['Billy', 'Megan', 'Aki', 'Arun', 'Joy', 'Anish', 'Lee', 'Maryan'], ['Nick', 'Josh', 'Pete', 'Kavita', 'Daisy', 'Francesca', 'Alfie', 'Macy']])).to eq ['Sam', 'Nina', 'Tim', 'Helen', 'Gurpreet', 'Edward', 'Holly', 'Eliza', 'Maryan', 'Lee', 'Anish', 'Joy', 'Arun', 'Aki', 'Megan', 'Billy', 'Nick', 'Josh', 'Pete', 'Kavita', 'Daisy', 'Francesca', 'Alfie', 'Macy']
    expect(bin_rota([['Stefan', 'Raj', 'Marie'], ['Alexa', 'Amy', 'Edward'], ['Liz', 'Claire', 'Juan'], ['Dee', 'Luke', 'Elle']])).to eq ['Stefan', 'Raj', 'Marie', 'Edward', 'Amy', 'Alexa', 'Liz', 'Claire', 'Juan', 'Elle', 'Luke', 'Dee']
    expect(bin_rota([['Dee'], ['Robert'], ['Dee'], ['Robert']])).to eq ['Dee', 'Robert', 'Dee', 'Robert']
    expect(bin_rota([['Billy']])).to eq ['Billy']
    expect(bin_rota([['Dee']])).to eq ['Dee']
    expect(bin_rota([['Billy', 'Nancy']])).to eq ['Billy', 'Nancy']
    expect(bin_rota([['Dee', 'Robert']])).to eq ['Dee', 'Robert']
    expect(bin_rota([['Billy'], ['Megan'], ['Aki'], ['Arun'], ['Joy']])).to eq ['Billy', 'Megan', 'Aki', 'Arun', 'Joy']
  end
end

