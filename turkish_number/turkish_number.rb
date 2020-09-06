# frozen_string_literal: true

def turkish_number(num)
  num_str = num.to_s

  return get_turkish_num(num_str) if (num <= 10) || (num % 10).zero?

  tenth_unit, single_unit = num_str.split('')
  get_turkish_num(tenth_unit + '0') + ' ' + get_turkish_num(single_unit)
end

def get_turkish_num(num)
  nums_dict = {
    '0' => 'sıfır',
    '1' => 'bir',
    '2' => 'iki',
    '3' => 'üç',
    '4' => 'dört',
    '5' => 'beş',
    '6' => 'altı',
    '7' => 'yedi',
    '8' => 'sekiz',
    '9' => 'dokuz',
    '10' => 'on',
    '20' => 'yirmi',
    '30' => 'otuz',
    '40' => 'kırk',
    '50' => 'elli',
    '60' => 'altmış',
    '70' => 'yetmiş',
    '80' => 'seksen',
    '90' => 'doksan'
  }

  nums_dict[num]
end
