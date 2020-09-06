require_relative 'array_zip'

describe Array do
  describe :zip do
    it 'returns correct result' do
      a = [1, 2, 3, 4, 5]
      b = ['a', 'b', 'c', 'd', 'e']

      expect(a.zip(b) { |x, y| x.to_s + y }).to eq ['1a', '2b', '3c', '4d', '5e']
      expect(b.zip(a) { |x, y| x + y.to_s }).to eq ['a1', 'b2', 'c3', 'd4', 'e5']
      expect(b.zip(a.zip(b) { |x, y| x * y.ord }) { |x, y| x + y.to_s }).to eq ['a97', 'b196', 'c297', 'd400', 'e505']
    end

    it 'handles different length arrays' do
      a = [1, 2, 3, 4, 5]
      b = ['a', 'b']
      expect(a.zip(b) { |x, y| x.to_s + y }).to eq ['1a', '2b']
    end
  end
end
