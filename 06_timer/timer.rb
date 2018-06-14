class Timer
  def initialize
      @sec = 0
  end

    def seconds=(num) #!setter
        @sec = num
    end

    def seconds #!getter
        return @sec
    end
    
    def time_string() #!display
        converter(@sec)
    end
end

def converter(seconds)
    min = (seconds/60).floor
    sec = seconds % 60
    
    hour = (min/60).floor
    min = min % 60
    
    if hour < 10
        hour = "0" + hour.to_s
    end
    if min < 10
        min = "0" + min.to_s
    end
    if sec < 10
        sec = "0" + sec.to_s
    end
    
    return "#{hour}:#{min}:#{sec}"
end

@timer = Timer.new
@timer.seconds
@timer.seconds = (4000)
@timer.seconds
@timer.time_string
