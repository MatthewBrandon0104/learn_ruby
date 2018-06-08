def add(a,b)
    return a + b
end

def subtract(a,b)
    return a - b
end

def sum(array)
    solution = 0
    i = 0
    while i < array.length
        solution += array[i]
        i += 1
    end
    return solution
end