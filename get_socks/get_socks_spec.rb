require_relative 'get_socks'

describe 'get_socks' do
  context 'when picking for Punky' do
    it 'returns different pairs' do
      expect(get_socks('Punky', ['pink', 'argyle', 'argyle'])).to eq ['pink', 'argyle']
      expect(get_socks('Punky', ['blue', 'blue', 'blue', 'green', 'green'])).to eq ['blue', 'green']

      expect(get_socks('Punky', ['pink', 'pink', 'pink', 'pink'])).to eq []
      expect(get_socks('Punky', ['green'])).to eq []
      expect(get_socks('Punky', [])).to eq []
    end
  end

  context 'when picking for Henry' do
    it 'returns matching pairs' do
      expect(get_socks('Henry', ['red', 'blue', 'red', 'green'])).to eq ['red', 'red']
      expect(get_socks('Henry', ['red', 'blue', 'blue', 'green'])).to eq ['blue', 'blue']
      expect(get_socks('Henry', ['red', 'blue', 'blue', 'green'])).to eq ['blue', 'blue']

      expect(get_socks('Henry', ['green', 'blue', 'pink', 'argyle'])).to eq []
      expect(get_socks('Henry', ['argyle', 'green', 'dirty sock', 'argyle'])).to eq ['argyle', 'argyle']
      expect(get_socks('Henry', ['green'])).to eq []
      expect(get_socks('Henry', [])).to eq []
    end
  end
end
