class Provider < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :user_favorites
  has_many :comparisons, through: :provider_comparisons

  self.primary_key = "yelp_id"
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
  # def self.create(business_id)
  #   data = Yelp.client.business(business_id)
  #   return Provider.new(data)
  #
  # end
end
