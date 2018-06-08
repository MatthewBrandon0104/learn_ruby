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