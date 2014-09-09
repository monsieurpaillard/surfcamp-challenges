require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
text=""
until text == "I am going to work right now SIR !"
  puts "qu'est ce qu'il y a mon gars ?"
  text=gets.chomp

  puts coach_answer(text)

end


