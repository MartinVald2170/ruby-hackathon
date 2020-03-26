
# module MultipleChoice
    # # Accepts question number and then prompts user for response
    # # Structure of inputs:
    # input value: integer (question_number)
    # Questions array: accessed with question number
    # choices to display in prompt: 0 to 3 (returned as score)
    # return value: integer (question_number,score)
    require "tty-prompt"
    require "tty-box"
    
    require "./questions.rb"
    require "Questions"

    print "Please read each statement and select a response which indicates how much
    the statement applied to you over the past week"
    def ask_question(number, array)
        question = array[number][0]
        prompt = TTY::Prompt.new
        # $rating_scale.each do |elem|
        #     print TTY::Box.frame $rating_scale[($rating_scale.find_index(elem))]
        # end
        answer = prompt.select("\n #{question}", $rating_scale)
        answer = $rating_scale.find_index(answer.chomp)
        return [number, answer]
    end
    
    
    def ask_all_questions(array)
        output = []
        for each in array do
            output.push (ask_question(array.find_index(each),array))
        end
        return output
    end

    puts ask_all_questions(dass42).to_s