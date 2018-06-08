def translate(string)
    vowels = ["a","e","i","o","u"]
    array = string.split
    i = 0
    while i < array.length
        if vowels.include? array[i][0..0] 
            array[i] = array[i] + "ay"
            i += 1
        elsif array[i][0..1] == "qu"
            array[i] = array[i][2..array[i].length] + array[i][0..1] + "ay"
            i += 1
        elsif array[i][0..2] == "squ"
            array[i] = array[i][3..array[i].length] + array[i][0..2] + "ay"
            i += 1
        elsif !vowels.include?(array[i][0..0]) && !vowels.include?(array[i][1..1]) && !vowels.include?(array[i][2..2])
            array[i] = array[i][3..array[i].length] + array[i][0..2] + "ay"
            i += 1
        elsif !vowels.include?(array[i][0..0]) && !vowels.include?(array[i][1..1])
            array[i] = array[i][2..array[i].length] + array[i][0..1] + "ay"
            i += 1
        elsif !vowels.include?(array[i][0..0])
            array[i] = array[i][1..array[i].length] + array[i][0..0] + "ay"
            i += 1
        else return
        end
    end
    return array.join(" ")
end