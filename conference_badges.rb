# Write your code here.

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(arr)
  new_arr = []
  arr.each do |name|
    new_arr.push("Hello, my name is #{name}.")
  end
  new_arr
end

def assign_rooms(arr)
  assignments=[]
  arr.each_with_index() do |person, idx|
    assignments.push("Hello, #{person}! You'll be assigned to room #{idx+1}!")
  end
  assignments
end

def printer(arr)
  batch_badge_creator(arr).each do |badge|
    puts badge
  end
  assign_rooms(arr).each do |name_room|
    puts name_room
  end
end
