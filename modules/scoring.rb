# module Scoring
    require "./questions.rb"
    include Questions

    def apply_score(test_response, test)
        d_score = 0
        a_score = 0
        s_score = 0
        for response in test_response do
            # question = test[(response[0])]
            key = test[(response[0])][1]
            case key
            when "D" then
                d_score += response[1].to_i
            when "A" then
                a_score += response[1].to_i
            when "S" then
                s_score += response[1].to_i
            end
        end
        overall = d_score + a_score + s_score
        scores = {
            "Depression: " => d_score, 
            "Anxiety: " => a_score, 
            "Stress: " => s_score, 
            "Overall: " => overall
        }
        return scores
    end

    def output_to_screen(test_response, array)
        # Output responses to screen in table
        require "./tables.rb"
        include Tables
        output = []
        for response in test_response do
            question = array[(response[0])][0].chomp
            option_selected = $rating_scale[(response[1])].chomp
            output.push([question,option_selected])
        end
        print display_table(output)

        # Calculate scores
        score = apply_score(test_response, array)
        # Output under table
        score.each do |key, value|
            puts "#{key} : #{value}"
        end
    end
# end

# # Testing data
test_result = [[0, 2], [1, 3], [2, 2], [3, 0], [4, 1], [5, 3], [6, 3], [7, 2], [8, 2], [9, 3], [10, 2], [11, 1], [12, 3], [13, 1], [14, 3], [15, 3], [16, 3], [17, 2], [18, 2], [19, 3], [20, 1], [21, 1], [22, 2], [23, 2], [24, 2], [25, 1], [26, 0], [27, 3], [28, 3], [29, 2], [30, 2], [31, 0], [32, 1], [33, 0], [34, 0], [35, 0], [36, 0], [37, 0], [38, 0], [39, 0], [40, 0], [41, 0]]

output_to_screen(test_result, $dass42)