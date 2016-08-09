class ProvidersController < ApplicationController
  def show
    @result = Yelp.client.business(params[:id])
    render :show
  end


  private

    def providers_params
      params.permit(providers:[:id, :yelp_id])
    end

end
