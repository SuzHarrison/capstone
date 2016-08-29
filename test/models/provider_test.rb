require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  # before do
  #   @yelp_info = Yelp.client.business(id).business
  # end

  describe "Provider", :vcr do
    it "exists", :vcr do
      refute_nil Provider.new
    end

    it "knows the details of a provider", :vcr do
      return_provider = Provider.find_by(yelp_id: 'a-helping-hand-homecare-seattle-2')

      assert_instance_of(Provider, return_provider)
      assert_equal return_provider.name, "A Helping Hand Homecare"
      assert_equal return_provider.bed_count, 4
      assert_equal return_provider.average_cost, 2400
      assert_equal return_provider.category, "Home Health Care"
      assert_equal return_provider.street, "5608 17th Ave NW"
      assert_equal return_provider.city, "Seattle"
      assert_equal return_provider.state_code, "WA"
      assert_equal return_provider.postal_code, "98107"
      assert_equal return_provider.display_phone, "206-686-7440"
    end
  end
end
