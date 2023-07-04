class Question
  # random number generator module
  def random_number
    rand(1..20)
  end

  # Asks and compares question
  def ask_question(player)
    num_one = random_number
    num_two = random_number
    answer = num_one + num_two

    puts "Player #{player.id}, What is the sum of #{num_one} and #{num_two}?"
    
    # Get user response
    response = nil

    # Error handling for all non-number input
    while (response.to_i == 0)
      response = gets.chomp.to_i
      
      if response.to_i == 0 
        puts "Please give me a non-zero number. Try again."
      end
    end

    # return true or false
    response == answer ? true : false
  end
end

# Test questions Class + module
# q = Question.new
# puts q.ask_question