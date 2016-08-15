require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  # before do
  #   @yelp_info = Yelp.client.business(id).business
  # end

  describe Provider do
    it "exists" do
      refute_nil Provider.new
    end

    it "it can find a provider" do
      return_provider = Provider.find_by(yelp_id: 'a-helping-hand-homecare-seattle-2')

      assert_instance_of(Provider, return_provider)
      assert_equal return_provider.name, "A Helping Hand Homecare"
      assert_equal return_provider.bed_count, 4
    end
  end
end
