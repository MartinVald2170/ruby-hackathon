logged_in = false
login_password = {
    "Morgan" => "1234567890"
}

}
while !logged_in 
puts "What is your login?
(Case Sensitive)"
login = gets.chomp 
if login_password.has_key?(login)
    puts "What is your password?
(Case Sensitive)"

   
    password = gets.chomp
if login_password[login] == password 
    puts "Welcome #{login}"
    logged_in = true  
else 
    puts "Password was incorrect please try again"
    end 
end 
end  