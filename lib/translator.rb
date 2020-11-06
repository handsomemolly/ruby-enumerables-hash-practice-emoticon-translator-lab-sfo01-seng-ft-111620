# require modules here
require 'yaml'
require 'pry'


def load_library(path)

  emoticons = YAML.load_file('emoticons.yml')
  
  
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  
  emoticons.each do |keyvalue, emote|
    
    english = emote[0]
    japanese = emote[1]
    
    new_hash['get_meaning'][japanese] = keyvalue
    new_hash['get_emoticon'][english] = japanese
    
  end
  
  new_hash
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