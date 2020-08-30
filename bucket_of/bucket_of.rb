def bucket_of(str)
  water = str.match?(/water|wet|wash/i)
  slime = str.match?(/I don't know|slime/i)

  case
  when water && slime then
    'sludge'
  when water then
    'water'
  when slime then
    'slime'
  else
    'air'
  end
end