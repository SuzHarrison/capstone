class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :provider

  def yelp_info
    @yelp_info ||= Yelp.client.business(provider_id).business
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

  # def add_note
  #
  # end
end
