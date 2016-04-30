class StaticPagesController < ApplicationController
  def home
  	if params[:answer]
    	@string = Clues.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    else
      @first_question = 'What is your first name?'
    end
  end

  def help
  end
end
