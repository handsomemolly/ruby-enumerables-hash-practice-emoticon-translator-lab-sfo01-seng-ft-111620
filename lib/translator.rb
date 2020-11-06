# require modules here
require 'yaml'
require 'pry'


def load_library(path)

emoticons = YAML.load_file(file_path)
  emoticon_lib = {}
  emoticons.each do |key, value|
    emoticon_lib[key][:english => value[0], :japanese => value[1]]
  end
  emoticon_lib
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