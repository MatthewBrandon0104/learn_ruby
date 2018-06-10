class Book
    def title=(string)
        @title = string
    end
    
    def title
        string = @title
        array = string.split()
        array[0] = array[0].capitalize
        
        i = 1
        while i < array.length
            if array[i] == "a" || array[i] == "an" || array[i] == "and" || array[i] == "if" || array[i] == "the" || array[i] == "in" || array[i] == "of"
                i += 1
                next
            else
                array[i] = array[i].capitalize
                i += 1
            end
        end
        return array.join(" ")
    end
end


