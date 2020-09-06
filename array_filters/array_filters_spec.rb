require_relative './array_filters'

describe 'Array' do
  describe "#even" do
    it 'works correctly' do
      expect([1, 2, 3, 4, 5, 'fo'].even).to eq [2, 4]
    end
  end

  describe "#odd" do
    it 'works correctly' do
      expect([1, 2, 3, 4, 5, 'fo'].odd).to eq [1, 3, 5]
    end
  end

  describe "#under" do
    it 'works correctly' do
      expect([1, 2, 3, 4, 5, 'fo'].under(3)).to eq [1, 2]
    end
  end

  describe "#over" do
    it 'works correctly' do
      expect([1, 2, 3, 4, 5, 'fo'].over(3)).to eq [4, 5]
    end
  end

  describe "#in_range" do
    it 'works correctly' do
      expect([1, 2, 3, 4, 5, 'fo'].in_range(1, 3)).to eq [1, 2, 3]
      expect([1, 2, 3, 4, 5, 'fo'].in_range(1..3)).to eq [1, 2, 3]
    end
  end
end
