class QuotesController < ApplicationController
before_action :fetch_quote, only: [:show]

def show
	respond_to do |format|
		format.html
		format.json { render json: @quote }
	end
end

def index
	@quotes = Quote.all

	respond_to do |format|
		format.json { render json: @quotes}
	end
end

private
def fetch_quote
	@quote = Quote.find(params[:id])
end
end
