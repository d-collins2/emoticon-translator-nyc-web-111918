# require modules here
require "pry"
require "yaml"
def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoticon_hash = Hash.new 
  
  emoticon_hash["get_emoticon"] = Hash.new 
  emoticon_hash["get_meaning"] = Hash.new 
  
  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  
  emoticon_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
end

def get_english_meaning(path, emoticon)
  # code goes here
end