# To use this file:
# use:  require



require "tty-prompt"
require "tty-box"

print "Please read each statement and select a response which indicates how much
the statement applied to you over the past week"
def ask_question(number, array)
    question = array[number][0]
    
    prompt = TTY::Prompt.new
    puts question
    for option in rating_scale do
        print TTY::Box.frame rating_scale[option]
    end

    answer = prompt.select("Rating scale?", %w(0 1 2 3))
    return [number, answer]
end



module Questions
    # Rating Scale for multiple chopice options
    # Each response has a score value of it's index
    # example "Applied to me to a considerable degree, or a good part of time" at index 2 has a score value of 2
    rating_scale= [
        "Did not apply to me at all",
        "Applied to me to some degree, or some of the time",
        "Applied to me to a considerable degree, or a good part of time",
        "Applied to me very much, or most of the time"
    ]

    # To pull the question string, use questions[index][0]
    # To pull the S, A, or D value, use questions[index][1]
    # where the 'index' is the questions number

    # DASS21 test
    dass21 = [
        ["I found it hard to wind down","S"],
        ["I was aware of dryness of my mouth","A"],
        ["I couldn't seem to experience any positive feeling at all","D"],
        ["I experienced breathing difficulty (eg, excessively rapid breathing, breathlessness in the absence of physical exertion)","A"],
        ["I found it difficult to work up the initiative to do things","D"],
        ["I tended to over-react to situations","S"],
        ["I experienced trembling (eg, in the hands)","A"],
        ["I felt that I was using a lot of nervous energy","S"],
        ["I was worried about situations in which I might panic and make a fool of myself","A"],
        ["I felt that I had nothing to look forward to","D"],
        ["I found myself getting agitated","S"],
        ["I found it difficult to relax","S"],
        ["I felt down-hearted and blue","D"],
        ["I was intolerant of anything that kept me from getting on with what I was doing","S"],
        ["I felt I was close to panic","A"],
        ["I was unable to become enthusiastic about anything","D"],
        ["I felt I wasn't worth much as a person","D"],
        ["I felt that I was rather touchy","S"],
        ["I was aware of the action of my heart in the absence of physical exertion (eg, sense of heart rate increase, heart missing a beat)","A"],
        ["I felt scared without any good reason","A"],
        ["I felt that life was meaningless","D"]
    ]

    # DASS Full 42 question test
    dass42 = [
        ["I found myself getting upset by quite trivial things","S"],
        ["I was aware of dryness of my mouth","A"],
        ["I couldn't seem to experience any positive feeling at all","D"],
        ["I experienced breathing difficulty (eg, excessively rapid breathing, breathlessness in the absence of physical exertion)","A"],
        ["I just couldn't seem to get going","D"],
        ["I tended to over-react to situations","S"],
        ["I had a feeling of shakiness (eg, legs going to give way)","A"],
        ["I found it difficult to relax","S"],
        ["I found myself in situations that made me so anxious I was most relieved when they ended","A"],
        ["I felt that I had nothing to look forward to","D"],
        ["I found myself getting upset rather easily","S"],
        ["I felt that I was using a lot of nervous energy","S"],
        ["I felt sad and depressed","D"],
        ["I found myself getting impatient when I was delayed in any way (eg, elevators, traffic lights, being kept waiting)","S"],
        ["I had a feeling of faintness","A"],
        ["I felt that I had lost interest in just about everything","D"],
        ["I felt I wasn't worth much as a person","D"],
        ["I felt that I was rather touchy","S"],
        ["I perspired noticeably (eg, hands sweaty) in the absence of high temperatures or physical exertion","A"],
        ["I felt scared without any good reason","A"],
        ["I felt that life wasn't worthwhile","D"],
        ["I found it hard to wind down","S"],
        ["I had difficulty in swallowing","A"],
        ["I couldn't seem to get any enjoyment out of the things I did","D"],
        ["I was aware of the action of my heart in the absence of physical exertion (eg, sense of heart rate increase, heart missing a beat)","A"],
        ["I felt down-hearted and blue","D"],
        ["I found that I was very irritable","S"],
        ["I felt I was close to panic","A"],
        ["I found it hard to calm down after something upset me","S"],
        ["I feared that I would be 'thrown' by some trivial but unfamiliar task","A"],
        ["I was unable to become enthusiastic about anything","D"],
        ["I found it difficult to tolerate interruptions to what I was doing","S"],
        ["I was in a state of nervous tension","S"],
        ["I felt I was pretty worthless","D"],
        ["I was intolerant of anything that kept me from getting on with what I was doing","S"],
        ["I felt terrified","A"],
        ["I could see nothing in the future to be hopeful about","D"],
        ["I felt that life was meaningless","D"],
        ["I found myself getting agitated","S"],
        ["I was worried about situations in which I might panic and make a fool of myself","A"],
        ["I experienced trembling (eg, in the hands)","A"],
        ["I found it difficult to work up the initiative to do things","D"]
    ]
end