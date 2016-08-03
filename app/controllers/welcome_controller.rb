require 'yelp'

class WelcomeController < ApplicationController
  def index

  end

  def search_term
    all_data = {
           limit: 20,
           category_filter: (params[:category]).downcase.gsub(/\s/, ""),
         }

    @results = Yelp.client.search(params[:city], all_data)
    # render :index
  end
end
