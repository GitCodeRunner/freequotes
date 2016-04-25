class QuotesController < ApplicationController

def show
	@quotes = Quote.all
end

end
