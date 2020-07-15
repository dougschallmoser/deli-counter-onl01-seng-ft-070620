
## REWORK

# 1. Build the #line method that:
#    -Shows their current place in line
#    -If nobody is in line, it should output:
#       "The line is currently empty."
# 2. Build the #take_a_number method that:
#    -Accepts two parameters (the array for current line
#     and a string with the name of the person
#     joining the end of the line)
#    -Add person to end of line
#    -Return the persons name and position in line.
# 3. Build the #now_serving method that:
#    -Outputs the next person in line
#    -Removes that person in line
#    -If nobody is in line, it should output
#       "There is nobody waiting to be served!"

def line(queue)
    queue_sentence = "The line is currently:"
    if queue.length > 0 
        queue.each_with_index do |name, index|
            queue_sentence << " #{index + 1}. #{name}"
        end
        puts queue_sentence
    else 
        puts "The line is currently empty."
    end 
end 

def take_a_number(array, last_person)
    array.push(last_person)
    puts "Welcome, #{last_person}. You are number #{array.length} in line."
end 

def now_serving(array)
    if array.length > 0
        puts "Currently serving #{array[0]}."
        array.shift()
    else
        puts "There is nobody waiting to be served!"
    end
end 

