class ProvidersController < ApplicationController
  before_action :must_be_logged_in
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
    @result = Provider.find(params[:id])
    # @result = Provider.create(params[:id])
    render :show
  end


  private

    def providers_params
      params.permit(providers:[:id, :yelp_id])
    end

    def must_be_logged_in
      if current_user.nil?
        redirect_to '/login'
      end
    end

end
