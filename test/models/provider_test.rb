require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  # before do
  #   @yelp_info = Yelp.client.business(id).business
  # end

  describe Provider do
    it "exists" do
      refute_nil Provider.new
    end

    it "can find a provider" do
      result = Provider.where(yelp_id: 'a-helping-hand-homecare-seattle-2')
      # puts "this is the thing, #{result}"
      #
      # puts "The name is #{result.name}"
      # puts "The something is #{result.bed_count}"
      # # assert_equal result.name, "A Helping Hand Homecare"
      # assert_equal result.name, "A Helping Hand Homecare"
    end
  end
end
