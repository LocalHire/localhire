class SearchesController < ApplicationController
    def new
        @search = Search.new
    end

    def create
        #@search = Search.create!(params[:search])
        @search = Search.new(search_params)
        @search.save
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end


    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:keywords, :hireplan, :duration, :minprice, :maxprice)
    end
end
