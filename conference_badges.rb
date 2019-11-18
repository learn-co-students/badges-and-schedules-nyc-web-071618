require 'pry'
# Write your code here.
def badge_maker(name)
    # puts "Hello, my name is #{name}."
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    badges = []
    # binding.pry
    array.each do |name|
        badges << badge_maker(name)
    end
    badges
end 

def assign_rooms(array)
    rooms = []
    # binding.pry
    array.each_with_index do |name, index|
        rooms[index] = "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    rooms
    # binding.pry
end

def printer(attendees)
    badges = []
    rooms = []
    # attendees.each do |name|
    # end
    badges = batch_badge_creator(attendees)
    rooms = assign_rooms(attendees)
    counter = 0
    while counter < badges.length
        puts badges[counter]
        puts rooms[counter]
        counter += 1
    end
end

printer(["Ada","Charles","Dickens"])