class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :provider

  def get_provider_info
    business = Yelp.client.business(provider_id).business
    return business
  end

  # def add_note
  #
  # end
end
