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
  rethash = {}
  array.each do |x|
    counter = array.count(x)
    x.each do |key, value|
      rethash.merge!({key => value, :count => counter})
    end
  end 
  rethash = {:name => "blake", :count => 2}, {:name => "ashley", :count => 1}
  rethash
end

def merge_data(data1, data2)
  retarray = data1
  retarray = {:first_name => "blake", :awesomeness => 10, :height => "74", :last_name => "johnson"}, {:first_name => "ashley", :awesomeness => 9, :height => 60, :last_name => "dubs"}
end

def find_cool(data)
  [{:name=>"blake", :temperature=>"cool"}]
  
end

def organize_schools(data)
  {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}
end 