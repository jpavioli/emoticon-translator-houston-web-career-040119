# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  yaml_data = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
  yaml_data.each{|english,val| get_meaning[val[1]] = english }
  yaml_data.each{|english,val| get_emoticon[val[0]] = val[1] }
  {"get_meaning" => get_meaning,
   "get_emoticon" => get_emoticon}
end

def get_japanese_emoticon(file_path,emotiocon)
  # code goes here
  hash = load_library(file_path)
  if hash["get_emoticon"].keys.include?(emotiocon)
    hash["get_emoticon"][emotiocon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path,emotiocon)
  # code goes here
  hash = load_library(file_path)
  if hash["get_meaning"].keys.include?(emotiocon)
    hash["get_meaning"][emotiocon]
  else
    "Sorry, that emoticon was not found"
  end
end
