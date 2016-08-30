require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  describe "Favorite", :vcr do
    it "exists", :vcr do
      refute_nil Favorite.new
    end

    it "knows the details of a favorite", :vcr do
      return_favorite = Favorite.find_by(provider_id: 'a-helping-hand-homecare-seattle-2')
      assert_instance_of(Favorite, return_favorite)
      assert_equal return_favorite.name, "A Helping Hand Homecare"
      # assert_equal return_favorite.bed_count, 4
      # assert_equal return_favorite.average_cost, 2400
      assert_equal return_favorite.category, "Home Health Care"
      assert_equal return_favorite.street, "5608 17th Ave NW"
      assert_equal return_favorite.city, "Seattle"
      assert_equal return_favorite.state_code, "WA"
      assert_equal return_favorite.postal_code, "98107"
      assert_equal return_favorite.display_phone, "206-686-7440"
    end
  end
end
