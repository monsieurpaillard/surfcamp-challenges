def coach_answer(your_message)
  # TODO: return coach answer to your_message

  if your_message.include? "?"
    return "Silly question, get dressed and go to work !"
  elsif your_message == "I am going to work right now SIR !"
    return ""
  else
    return "I don't care son, get dressed and go to work !"
  end

end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
end

