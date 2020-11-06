# require modules here
require 'yaml'
require 'pry'


def load_library(path)
  final_hash = {}
  YAML.load_file(path).each do |key, value|
    final_hash[key] = {}
    final_hash[key][:english] == ""
    final_hash[key][:japanese] == ""
  end  
  final_hash
end



def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) #call load_library
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] #the same above but change get_meaning
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end