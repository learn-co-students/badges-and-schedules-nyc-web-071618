def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  array = []
  for attendee in attendees
    array.push(badge_maker(attendee))
  end
  return array
end

def assign_rooms(attendees)
  counter = 1
  rooms = []
  for attendee in attendees
    rooms.push("Hello, #{attendee}! You'll be assigned to room #{counter}!")
    counter += 1
  end
  return rooms
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)

  badges.each do |badge|
    puts "#{badge}"
  end
  rooms.each do |attendee|
    puts "#{attendee}"
  end
end
