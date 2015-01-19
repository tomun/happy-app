class HappyController < ApplicationController

	@@message = ""

	# GET /happy
	def index
	 @message = @@message
	end

	# POST /happy/random_joke
	def random_joke
		jokes = Joke.all
		joke = jokes.sample
		@@message = "#{joke.setup} #{joke.punchline}"
		redirect_to(happy_path)
	end

	# POST /happy/random_quote
	def random_quote
		quotes = Quote.all
		quote = quotes.sample
		@@message = "#{quote.saying} - #{quote.source}"
		redirect_to(happy_path)
	end

end