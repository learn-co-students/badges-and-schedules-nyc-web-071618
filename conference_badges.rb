def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map do |name|
    "Hello, my name is #{name}."
  end
end

def assign_rooms(guest)
   guest.each_with_index.map do |name, room|
     "Hello, #{name}! You'll be assigned to room #{room+1}!"
   end
end

def printer(list)
  batch_badge_creator(list).each do |name|
    puts name
  end
  assign_rooms(list).each do |room|
    puts room
  end
end
