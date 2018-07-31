require "pry"
# your code goes here
def begins_with_r(array)
  array.each do |x|
    if x[0] != "r"
      return false 
    end 
  end
  return true
end

def contain_a(array)
  retarray = []
  array.each do |x|
    counter = x.count('a')
    if counter > 0 
      retarray.push(x)
    end
  end
  retarray
end

def first_wa(array)
  array.each do |x|
    if x[0] == "w" && x[1] == "a"
      return x
    end 
  end 
end

def remove_non_strings(array)
  retarray = []
  array.each do |x|
    if x.class == String
      retarray.push(x)
    end
  end
  retarray
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(data)
  [{:name=>"blake", :temperature=>"cool"}]
  
end

def organize_schools(data)
  orgschools = {}
  data.each do |school, locationhash|
    location = locationhash[:location]
    if orgschools[location]
      orgschools[location] << school
    else
      orgschools[location] = []
      orgschools[location] << school
    end
  end
  
  orgschools
end 
