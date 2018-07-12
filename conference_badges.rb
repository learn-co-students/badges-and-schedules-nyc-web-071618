# Write your code here.
def batch_badge_creator(array)
  array.map { |badges| "Hello, my name is #{badges}." }
end

def assign_rooms(speakers)
  speakers.each_with_index.map { |speaker, index| "Hello, #{speaker}! You'll be assigned to room #{index+1}!" }
end

def printer(array)
  batch_badge_creator(array).each { |badge| puts badge }
  assign_rooms(array).each { |room| puts room }
end

def badge_maker(name)
  return "Hello, my name is #{name}."
end
