# Write your code here.

def badge_maker name
    "Hello, my name is #{name}."
end

# def batch_badge_creator namesArr
#     namesArr.map do |name|
#         badge_maker name
#     end
# end

def batch_badge_creator namesArr
    namesArr.map{|name| badge_maker name}
end

def assign_rooms speakersArr
    speakersArr.map.with_index(1) do |speaker, index|
        "Hello, #{speaker}! You'll be assigned to room #{index}!"
    end
end

def printer namesArr
    batch_badge_creator(namesArr).each{|badge| puts badge}
    assign_rooms(namesArr).each{|room| puts room}
end