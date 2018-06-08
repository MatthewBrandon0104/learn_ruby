def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, num = 2)
    string = string + " "
    new_string = string * num
    return new_string.chomp(" ")
end

def start_of_word(string, num)
    return string[0..num - 1]
end

def first_word(string)
    array = string.split
    return array[0]
end

def titleize(string)
    array = string.split
    new_array = []
    new_array[0] = array[0].capitalize
    i = 1
    while i < array.length
        if array[i] == "the" || array[i] == "is" || array[i] == "a" || array[i] == "and"
            new_array[i] = array[i]
            i += 1
            next
        else 
            new_array[i] = array[i].capitalize
            i += 1
        end
    end
    return new_array.join(" ")
end