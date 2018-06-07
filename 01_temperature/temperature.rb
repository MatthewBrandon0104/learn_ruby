def ftoc(num)
    num = (num - 32) * 5 / 9
    return num.round
end

def ctof(num)
    num = 1.8 * num + 32
    if isInt(num) == true
        return num.round
    else
        return num.round(1)
    end
end

def isInt(arg)
    if arg % 1 == 0
        return true
    else
        return false
    end
end