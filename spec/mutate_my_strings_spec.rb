# frozen_string_literal: true

require_relative '../src/mutate_my_strings'

describe 'String' do
  describe '#replace_at' do
    it 'replaces char at given index' do
      expect('foo'.replace_at(1, '*')).to eq 'f*o'
      expect('foobar'.replace_at(3, '*')).to eq 'foo*ar'
    end
  end
end

describe 'mutate_my_strings' do
  it 'returns correct result' do
    expect(mutate_my_strings('bubble gum', 'turtle ham')).to eq "bubble gum\ntubble gum\nturble gum\nturtle gum\nturtle hum\nturtle ham\n"
    expect(mutate_my_strings('car door', 'car bore')).to eq "car door\ncar boor\ncar borr\ncar bore\n"
    expect(mutate_my_strings('open source', 'lean course')).to eq "open source\nlpen source\nleen source\nlean source\nlean cource\nlean course\n"
    expect(mutate_my_strings('right wrong', 'wrong right')).to eq "right wrong\nwight wrong\nwrght wrong\nwroht wrong\nwront wrong\nwrong wrong\nwrong rrong\nwrong riong\nwrong rigng\nwrong righg\nwrong right\n"
    expect(mutate_my_strings('pythons best', 'jscript bttr')).to eq "pythons best\njythons best\njsthons best\njschons best\njscrons best\njscrins best\njscrips best\njscript best\njscript btst\njscript bttt\njscript bttr\n"
    expect(mutate_my_strings('acvqwrtqwcasd', 'lvqewnhuiypaf')).to eq "acvqwrtqwcasd\nlcvqwrtqwcasd\nlvvqwrtqwcasd\nlvqqwrtqwcasd\nlvqewrtqwcasd\nlvqewntqwcasd\nlvqewnhqwcasd\nlvqewnhuwcasd\nlvqewnhuicasd\nlvqewnhuiyasd\nlvqewnhuiypsd\nlvqewnhuiypad\nlvqewnhuiypaf\n"
    expect(mutate_my_strings('bubble gum crisis', 'turtle ham creamy')).to eq "bubble gum crisis\ntubble gum crisis\nturble gum crisis\nturtle gum crisis\nturtle hum crisis\nturtle ham crisis\nturtle ham cresis\nturtle ham creais\nturtle ham creams\nturtle ham creamy\n"
    expect(mutate_my_strings('bubble gum crisis tokyo 2040', 'turtle ham creamy apple pies')).to eq "bubble gum crisis tokyo 2040\ntubble gum crisis tokyo 2040\nturble gum crisis tokyo 2040\nturtle gum crisis tokyo 2040\nturtle hum crisis tokyo 2040\nturtle ham crisis tokyo 2040\nturtle ham cresis tokyo 2040\nturtle ham creais tokyo 2040\nturtle ham creams tokyo 2040\nturtle ham creamy tokyo 2040\nturtle ham creamy aokyo 2040\nturtle ham creamy apkyo 2040\nturtle ham creamy appyo 2040\nturtle ham creamy applo 2040\nturtle ham creamy apple 2040\nturtle ham creamy apple p040\nturtle ham creamy apple pi40\nturtle ham creamy apple pie0\nturtle ham creamy apple pies\n"
    expect(mutate_my_strings('bubble gum', 'bubble gum')).to eq "bubble gum\n"
    expect(mutate_my_strings('', '')).to eq "\n"
  end
end
