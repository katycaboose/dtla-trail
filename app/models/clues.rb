class Clues

  attr_accessor :user_submitted_string, :array_of_words

  def initialize(string)
    @user_submitted_string = string
    text_to_array
    @correct_answers = {
      'alexandre henri schmitt' => "you headed back from lunch with Ted\nditched the elevator and found me instead\nthis is the place where it all began,\nI couldn’t just leave it, so it’s with the doorman",
      'horsethief' => "8 minutes is what it did take\nto get to here with a quick gait\neach day we head a special route\nand use this exclusive service chute",
      'raj' => "we found this place our first Sunday\nand liked how it was tucked away\nimages of a time gone by\nbe careful, the ceiling is far from high",
      'sunday' => "lunch is my favorite time of day\nespecially when we get to play\nwith Cindy we went to this place of treasure\ncheck in your bag for the next endeavor",
      'neil patric harris' => "5th Street for your 5th clue\nback to the little cave we outgrew\nthink back to our first date\nand the little delicious hens we ate",
      'accent' => "sweat, stretch, shower, steam\nthat's now become the routine\n but with aching legs we walked the stairs\nto sit in the abandoned pool chairs",
      'blue room' => "for years we were told this place would come\nit's hoity toity bullshit is pretty dumb\but there is one perk if you look hard\nin this little box you'll find the next card",
      'france' => "we went here the day I turned 25,\nand shared oysters in this little dive\nwe closed the curtain and said cheese\nthe apartment holds evidence of our fees",
      'victor hugo' => "getting near the end of this hunt\ndon't blow it like Cheryl Tunt\nstories above the noise of the street\ndining out here is quite the treat",
      'costco' => "this is a favorite movie of yours\ncurrently stowed away in drawers\ngo find where it's been kept away\nit will blast you along your way",
      'tiny house' => "you are so close to the end of the game\nat this place we know the owner by name/nsmall, rank, and shady you’d/nthink it not ideal/nbut I l think it has fancy date appeal",
      'gregory' => "we followed French tourists across the city\nthat night even downtown looked pretty\nstanding beneath the shining moon\nwe shared our first kiss and I did swoon"
    }

    def text_to_array
      self.array_of_words = user_submitted_string.split('+').map(&:downcase)
  	end

    def array_counter
  		self.array_of_words.each do |check|
  			if @correct_answers.has_key?(check)
  				@answer = @correct_answers[check]
  				@last_correct_answer = check
  			else
  				@answer = "Incorrect. Re-enter your last correct answer or click home to start over."
  		end
  	end
  end

  	def show_answer
  		return @answer
  	end
  end
