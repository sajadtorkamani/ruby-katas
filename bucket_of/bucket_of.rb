# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def bucket_of(str)
  water = str.match?(/water|wet|wash/i)
  slime = str.match?(/I don't know|slime/i)

  if water && slime
    'sludge'
  elsif water
    'water'
  elsif slime
    'slime'
  else
    'air'
  end
end
# rubocop:enable Metrics/MethodLength
