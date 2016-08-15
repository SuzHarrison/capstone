class Provider < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :user_favorites
  has_many :comparisons, through: :provider_comparisons

  # validates :name, presence: true

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

  def yelp_info
    @yelp_info ||= Yelp.client.business(id).business
  end

  def name
    yelp_info.name
  end

  def display_phone
    yelp_info.display_phone[3..-1]
  end

  def image_url
    yelp_info.image_url
  end

  def rating_img_url
    yelp_info.rating_img_url
  end

  def category
    yelp_info.categories[0][0]
  end

  def bus_url
    yelp_info.url
  end

  def street
    yelp_info.location.display_address[0]
  end

  def city
    yelp_info.location.city
  end

  def state_code
    yelp_info.location.state_code
  end

  def postal_code
    yelp_info.location.postal_code
  end
end
