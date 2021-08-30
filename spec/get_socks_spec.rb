# frozen_string_literal: true

require_relative '../src/get_socks'

describe 'get_socks' do
  context 'when picking for Punky' do
    it 'returns different pairs' do
      expect(get_socks('Punky', %w[pink argyle argyle])).to eq %w[pink argyle]
      expect(get_socks('Punky', %w[blue blue blue green green])).to eq %w[blue green]

      expect(get_socks('Punky', %w[pink pink pink pink])).to eq []
      expect(get_socks('Punky', ['green'])).to eq []
      expect(get_socks('Punky', [])).to eq []
    end
  end

  context 'when picking for Henry' do
    it 'returns matching pairs' do
      expect(get_socks('Henry', %w[red blue red green])).to eq %w[red red]
      expect(get_socks('Henry', %w[red blue blue green])).to eq %w[blue blue]
      expect(get_socks('Henry', %w[red blue blue green])).to eq %w[blue blue]

      expect(get_socks('Henry', %w[green blue pink argyle])).to eq []
      expect(get_socks('Henry', ['argyle', 'green', 'dirty sock', 'argyle'])).to eq %w[argyle argyle]
      expect(get_socks('Henry', ['green'])).to eq []
      expect(get_socks('Henry', [])).to eq []
    end
  end
end
