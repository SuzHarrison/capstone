require 'yelp'

class WelcomeController < ApplicationController
  def index

  end

  def search_term
    care_types = {
      "Home Health Care" => "homehealthcare",
      "Assisted Living Facilities" => "assistedliving",
      "Retirement Homes" => "retirement_homes"
    }

    query = params[:category]

    if query
      converted_search_query = care_types[query]
    end

    all_data = {
     limit: 20,
     category_filter: converted_search_query
    }

    @results = Yelp.client.search(params[:city], all_data)
    render :index
  end

  def learn
    render :learn
  end
end
