class DrFlowChart

    attr_accessor :temp_flag, :full_flag

    def initialize
        puts "Turning ON HOT/COLD Taps"
        turn_on_taps
    end
  
    def turn_on_taps
        puts "Is it Too Hot/Cold [Y,N]"
        @temp_flag=gets.chomp
        check_if_too_hot_cold(@temp_flag)
    end

    def check_if_too_hot_cold(flag)     
        if not ["y", "n"].include?(flag.downcase) then
            puts "Only enter  [Y, N]"
            @temp_flag=gets.chomp
            check_if_too_hot_cold(@temp_flag)
        elsif flag.downcase == "y" then
            puts "Adjusting HOT/OLD Taps"
            turn_on_taps
        elsif flag.downcase == 'n' then
            wait_for_2_minutes
        end

    end

    def wait_for_2_minutes
        puts "Please wait for 2 minutes"
        sleep(120)
        puts "Is Bath Full [Y,N]"
        @full_flag=gets.chomp
        check_if_bath_full(@full_flag)
    end

    def check_if_bath_full(flag)
        
        if not ["y", "n"].include?(flag.downcase) then
            puts "Only enter  [Y, N]"
            @full_flag=gets.chomp
            check_if_bath_full(@full_flag)
        elsif flag.downcase == "y" then
            turn_off_taps
        elsif flag.downcase =='n' then
            wait_for_2_minutes
        end
    end
    
    def turn_off_taps
        puts "TURNING OFF TAPS -- THANK YOU"
    end

end