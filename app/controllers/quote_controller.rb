class QuoteController < ApplicationController
    def show
        @quote = Quote.find(params[:id])
    end
    
    def index
            @quote = Quote.all
    end

    def new
        @quote = Quote.new
    end

    def create
        @quote = Quote.new(quote_params)
        
        if @quote.save
            redirect_to @quote
        else
            render 'new'
        end
    end

    def destroy
        @quote = Quote.find(params[:id])
        @quote.destroy
        redirect_to quote_index_path
    end
    private
        def quote_params
            params.require(:quote).permit(:title, :text)
        end
end
