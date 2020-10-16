# frozen_string_literal: true

def gym_slang(str)
  str
    .gsub(/probably/, 'prolly').gsub(/Probably/, 'Prolly')
    .gsub(/i am/, "i'm").gsub(/I am/, "I'm")
    .gsub(/instagram/, 'insta').gsub(/Instagram/, 'Insta')
    .gsub(/do not/, "don't").gsub(/Do not/, "Don't")
    .gsub(/going to/, 'gonna').gsub(/Going to/, 'Gonna')
    .gsub(/combination/, 'combo').gsub(/Combination/, 'Combo')
end
