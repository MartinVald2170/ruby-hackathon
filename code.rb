require_relative "modules/tables.rb"
require_relative "modules/multiple_choice.rb"
require_relative "modules/authorize.rb"

include Tables
include MultipleChoice

class MainState
    attr_accessor 
        :test_taken
        :nextone
        :etc

    def initialize()
        if(Authorize.new().login() == :new)
            # start here
        else
            # display data from file
        end
    end

end

# Initialises program
run = MainState.new