# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [
  {
    name: "Ada",
    provider: "google",
    uid: 234567,
    email: "ada@gmail.com"
  },
  {
    name: "Bingley",
    provider: "google",
    uid: 345678,
    email: "bingley@gmail.com"
  },
  {
    name: "Gregory",
    provider: "google",
    uid: 456789,
    email: "gregory@gmail.com"
  },
]

users.each do |u|
  user = User.new(u)
  user.save(validate: false)
end

providers = [
  {
    yelp_id: "a-helping-hand-homecare-seattle-2",
    bed_count: 4,
    average_cost: 2400
  },
  {
    yelp_id: "eldercare-consulting-seattle",
    bed_count: 6,
    average_cost: 1200
  },
  {
    yelp_id: "husky-senior-care-seattle",
    bed_count: 11,
    average_cost: 2800
  },
  {
    yelp_id: "synergy-home-care-seattle-3",
    bed_count: 5,
    average_cost: 1700
  },
  {
    yelp_id: "with-a-little-help-seattle",
    bed_count: 4,
    average_cost: 1800
  },
  {
    yelp_id: "harvard-partners-home-health-seattle",
    bed_count: 10,
    average_cost: 2700
  },
  {
    yelp_id: "heartland-home-health-care-seattle-2",
    bed_count: 8,
    average_cost: 2400
  },
  {
    yelp_id: "fedelta-home-care-seattle-2",
    bed_count: 3,
    average_cost: 2400
  },
  {
    yelp_id: "family-resource-home-care-seattle",
    bed_count: 5,
    average_cost: 2400
  },

]

providers.each do |p|
  provider = Provider.new(p)
  provider.save(validate: false)
end

favorites = [
  {
    user_id: 1,
    provider_id: "synergy-home-care-seattle-3",
    notes: "Great personable staff and excellent reviews. Deb's grandmother was happy with them."
  },
  {
    user_id: 2,
    provider_id: "husky-senior-care-seattle",
    notes: "This service is fantastic! They are especially helpful at referrals."
  },
  {
    user_id: 3,
    provider_id: "a-helping-hand-homecare-seattle-2",
    notes: "Great staff-visit scheduled."
  },
  {
    user_id: 2,
    provider_id: "eldercare-consulting-seattle",
    notes: "This service is great for dad."
  }
]

favorites.each do |f|
  favorite = Favorite.new(f)
  favorite.save(validate: false)
end
#
# provider_comparisons = [
#   {
#     name: "A Helping Hand Homecare v. Laurel Parc At Bethany Village",
#     care_type: "Home Health Care",
#     cost_difference: 1200
#   }
# ]
#
# provider_comparisons.each do |pc|
#   provider_comparison = ProviderComparison.new(pc)
#   provider_comparison.save(validate: false)
# end
