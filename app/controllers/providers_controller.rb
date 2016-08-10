class ProvidersController < ApplicationController
  # attr_reader :name, :phone, :url, :image_url, :rating, :rating_img_url, :location
  #
  # def initialize(data)
  #   @name               = data.business.name
  #   @phone              = data.business.phone
  #   @url                = data.business.url
  #   @image_url          = data.business.image_url
  #   @rating_img_url     = data.business.rating_img_url
  #   @rating             = data.business.rating
  #   @location           = data.business.location.display_address
  # end
  #
  # def self.find_provider(params[:id])
  #   business = Yelp.client.business(params[:id])
  #   return self.new(business)
  # end


  def show
    @result = Yelp.client.business(params[:id])
    # @result = Provider.create(params[:id])
    render :show
  end


  private

    def providers_params
      params.permit(providers:[:id, :yelp_id])
    end

end
