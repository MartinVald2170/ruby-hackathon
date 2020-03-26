module MultipleChoice
    # # Accepts question number and then prompts user for response
    # # Structure of inputs:
    # input value: integer (question_number)
    # Questions array: accessed with question number
    # choices to display in prompt: 0 to 3 (returned as score)
    # return value: integer (question_number,score)
    
    require "tty-prompt"
    require "tty-box"

    require "./modules/questions.rb"
    include Questions
    

    def ask(test_option)
        puts prompt
        answer = gets.chomp
       return answer
    end
    
    def do_test()
        test = TTY::Prompt.new.select("Please select a test", %w(DASS_21 DASS_42))
        case test
            when "DASS_21" 
                then ask_all_questions($dass21)
            when "DASS_42" 
                then ask_all_questions($dass42)
        end
    end 

    def ask_question(number, array)
        question = array[number][0]
        prompt = TTY::Prompt.new
        answer = prompt.select("\n #{question}", $rating_scale)
        answer = $rating_scale.find_index(answer.chomp)
        return [number, answer]
    end
    
    def ask_all_questions(array)
        print "Please read each statement and select a response which indicates how much
        the statement applied to you over the past week"
        output = []
        for each in array do
            output.push (ask_question(array.find_index(each),array))
        end
        return output
    end
end


# # Test case
# puts ask_all_questions($dass21).to_s
# puts ask_all_questions($dass42).to_s