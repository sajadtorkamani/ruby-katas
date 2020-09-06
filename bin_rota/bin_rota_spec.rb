require_relative 'bin_rota'

describe 'bin_rota' do
  it 'returns correct result' do
    expect(bin_rota([%w[Bob Nora], %w[Ruby Carl]])).to eq %w[Bob Nora Carl Ruby]
    expect(bin_rota([%w[Dee Robert], %w[Robert Dee]])).to eq %w[Dee Robert Dee Robert]
    expect(bin_rota([%w[Sam Nina Tim Helen Gurpreet Edward Holly Eliza], %w[Billy Megan Aki Arun Joy Anish Lee Maryan], %w[Nick Josh Pete Kavita Daisy Francesca Alfie Macy]])).to eq %w[Sam Nina Tim Helen Gurpreet Edward Holly Eliza Maryan Lee Anish Joy Arun Aki Megan Billy Nick Josh Pete Kavita Daisy Francesca Alfie Macy]
    expect(bin_rota([%w[Stefan Raj Marie], %w[Alexa Amy Edward], %w[Liz Claire Juan], %w[Dee Luke Elle]])).to eq %w[Stefan Raj Marie Edward Amy Alexa Liz Claire Juan Elle Luke Dee]
    expect(bin_rota([['Dee'], ['Robert'], ['Dee'], ['Robert']])).to eq %w[Dee Robert Dee Robert]
    expect(bin_rota([['Billy']])).to eq ['Billy']
    expect(bin_rota([['Dee']])).to eq ['Dee']
    expect(bin_rota([%w[Billy Nancy]])).to eq %w[Billy Nancy]
    expect(bin_rota([%w[Dee Robert]])).to eq %w[Dee Robert]
    expect(bin_rota([['Billy'], ['Megan'], ['Aki'], ['Arun'], ['Joy']])).to eq %w[Billy Megan Aki Arun Joy]
  end
end
