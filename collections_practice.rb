# your code goes here
require 'pry'

def begins_with_r(array)
  array.all? {|x| x[0] == 'r'}
end

def contain_a(array)
  array.select {|word| word.include? "a"}
end

def first_wa(array)
  array.find {|word| word[0].include?("w") && word[1].include?("a")} #find only returns the first element that meets the condition
end

def remove_non_strings(array)
  array.select {|x| x.is_a? String} #select does NOT modify anything in the array, only pulls
end

def count_elements(array)
    elements = []

  array.each do |words|
    elements << {:name => words[:name], :count => array.count(words)}
  end

    elements.uniq
end

def merge_data(keys, data)
#binding.pry
  keys.each do |hash_key|
    data.each do |hash_data|
      hash_key.merge!(hash_data[hash_key[:first_name]])
    end
  end
end

def find_cool(cool)
  cool.select {|data| data.values.include?("cool")}
end

def organize_schools(schools)
    schools.each_with_object({}) do |(name, data), x|(x[data[:location]] ||= []).push(name)
    end
end
