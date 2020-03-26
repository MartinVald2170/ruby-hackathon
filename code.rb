require_relative "modules/tables.rb"
require_relative "modules/multiple_choice.rb"
require_relative "modules/authorize.rb"

include Tables
include MultipleChoice

class MainState
    def initialize()
        if(Authorize.new().login() == :new)
            do_test()
        else
            # display data from file
        end
    end

end

# Initialises program
run = MainState.new()