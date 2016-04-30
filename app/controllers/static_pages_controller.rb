class StaticPagesController < ApplicationController
  def home
    puts
    "This is the beginning of your journey back to your party. Use the clues to navigate to each destination. At the destination there will be a red envelopes in each location containing a question. The correct answer to each question will unlock the next clue. If you reach the end of your journey you will be reunited with your party. Enter your full name to get your first clue."
  	if params[:answer]
    	@string = Clues.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    end
  end

  def help
  end
end
