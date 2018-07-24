def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  batch_badges = []
  speakers.each do |name|
    batch_badges << badge_maker(name)
    end
  return batch_badges
end

def assign_rooms(speakers)
  rooms = []
  # room_counter = 1
  speakers.each_with_index do |name, index|
    rooms << "Hello, #{name}! You'll be assigned to room #{index +1}!"
    # room_counter += 1
    end
  return rooms

end

def printer(attendees)
  attendee_array = batch_badge_creator(attendees)
  rooms_array = assign_rooms(attendees)
  counter = 0

  while attendee_array.length > counter
    puts attendee_array[counter]
    puts rooms_array[counter]
    counter += 1
  end

end

# printer (["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])
