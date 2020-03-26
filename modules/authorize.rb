require_relative 'encryption.rb'
require 'tty-prompt'

class Authorize
    attr_accessor :encryption, :prompt
    
    def initialize()
        @encryption = FileEncrypt.new()
        @prompt = TTY::Prompt.new()
    end

    def login()
        data = nil
        menu_choice = prompt.select("What would you like to do?") { |menu|
            menu.choice('New Session')
            menu.choice('Load Session')
        }

        if(menu_choice == "New Session")
            return :new
        else
            while(data == nil)
                print("Please enter your password: ")
                input = gets().chomp()
                return if @encryption.decrypt_data(encryption.read_file, input)
            end
        end
    end
end

# data = Authorize.new().login()