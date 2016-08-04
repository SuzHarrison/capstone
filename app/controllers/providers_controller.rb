class ProvidersController < ApplicationController
  def show
    @result = Yelp.client.business(params[:id])
    render :show
  end


end
