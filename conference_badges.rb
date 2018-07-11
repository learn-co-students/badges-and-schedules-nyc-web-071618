attendees = []

def badge_maker(name)
  attendees.push(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badge_batch = []
  attendees.each { |i| badge_batch.push("Hello, my name is #{i}.") }
  badge_batch
end

def assign_rooms(attendees)
  rooms = []
  attendees.each { |i| rooms.push("Hello, #{i}! You'll be assigned to room #{attendees.index(i) + 1}!")}
  rooms
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badges|
    puts badges
  end
  assign_rooms(attendees).each do |rooms|
    puts rooms
  end
end
