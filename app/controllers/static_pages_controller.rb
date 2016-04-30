class StaticPagesController < ApplicationController
  def home
    puts
    "This is the beginning of your journey back to your party.\nUse the clues to navigate to each destination.\nThere will be red envelopes in each location containing a question.\nThe correct answer to each question will unlock the next clue.\nAny wrong answers will weaken your player.\nIf you reach the end of your journey you will be reunited with your party.\nEnter your FULL NAME below to get your first clue."
  	if params[:answer]
    	@string = Clues.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    else
      @first_question = "What is your full name?"
  end
end

  def help
  end
end
