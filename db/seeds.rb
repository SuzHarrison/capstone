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
  {
    yelp_id: "queen-anne-manor-senior-living-seattle",
    bed_count: 4,
    average_cost: 1900
  },
  {
    yelp_id: "fairwinds-redmond-redmond",
    bed_count: 10,
    average_cost: 2200
  },
  {
    yelp_id: "aegis-on-madison-seattle",
    bed_count: 10,
    average_cost: 2200
  },
  {
    yelp_id: "covenant-shores-mercer-island-2",
    bed_count: 4,
    average_cost: 2900
  },
  {
    yelp_id: "fairwinds-brittany-park-woodinville",
    bed_count: 7,
    average_cost: 2200
  },
  {
    yelp_id: "fairwinds-brighton-court-lynnwood",
    bed_count: 12,
    average_cost: 2200
  },
  {
    yelp_id: "overlake-terrace-retirement-community-redmond",
    bed_count: 8,
    average_cost: 2300
  },
  {
    yelp_id: "aegis-of-lodge-kirkland",
    bed_count: 20,
    average_cost: 2900
  },
  {
    yelp_id: "regency-newcastle-newcastle",
    bed_count: 4,
    average_cost: 1900
  },
  {
    yelp_id: "aegis-of-shoreline-shoreline-3",
    bed_count: 17,
    average_cost: 2700
  },
  {
    yelp_id: "patriots-glen-assisted-living-bellevue",
    bed_count: 10,
    average_cost: 2400
  },
  {
    yelp_id: "aegis-of-bellevue-bellevue",
    bed_count: 19,
    average_cost: 2900
  },
  {
    yelp_id: "aegis-of-redmond-redmond",
    bed_count: 10,
    average_cost: 2900
  },
  {
    yelp_id: "el-dorado-west-burien",
    bed_count: 18,
    average_cost: 2100
  },
  {
    yelp_id: "aegis-of-issaquah-issaquah",
    bed_count: 15,
    average_cost: 2800
  },
  {
    yelp_id: "aegis-of-lynnwood-lynnwood",
    bed_count: 20,
    average_cost: 2800
  },
  {
    yelp_id: "mountlake-terrace-plaza-mountlake-terrace-2",
    bed_count: 7,
    average_cost: 2700
  },
  {
    yelp_id: "the-cottages-carepartners-management-group-mill-creek",
    bed_count: 9,
    average_cost: 2400
  },
  {
    yelp_id: "hospitality-home-care-seattle-2",
    bed_count: 4,
    average_cost: 2500
  },
  {
    yelp_id: "careful-placement-adult-family-home-agency-seattle",
    bed_count: 5,
    average_cost: 2400
  },
  {
    yelp_id: "always-best-care-bellevue",
    bed_count: 6,
    average_cost: 2500
  },
  {
    yelp_id: "legsmart-seattle-seattle",
    bed_count: 7,
    average_cost: 2200
  },
  {
    yelp_id: "concierge-care-advisors-seattle",
    bed_count: 10,
    average_cost: 2200
  },
  {
    yelp_id: "seniors-helping-seniors-seattle",
    bed_count: 12,
    average_cost: 1900
  },
  {
    yelp_id: "andelcare-bellevue",
    bed_count: 7,
    average_cost: 2100
  },
  {
    yelp_id: "right-at-home-seattle",
    bed_count: 4,
    average_cost: 1700
  },
  {
    yelp_id: "mcdonald-employment-services-seattle",
    bed_count: 12,
    average_cost: 1700
  },
  {
    yelp_id: "care-at-home-elder-care-services-seattle-2",
    bed_count: 8,
    average_cost: 1900
  },
  {
    yelp_id: "providence-hospice-of-seattle-seattle",
    bed_count: 14,
    average_cost: 1900
  },
  {
    yelp_id: "bayview-retirement-community-seattle-2",
    bed_count: 14,
    average_cost: 2900
  },
  {
    yelp_id: "horizon-house-seattle-3",
    bed_count: 10,
    average_cost: 3000
  },
  {
    yelp_id: "ida-culver-house-ravenna-seattle-2",
    bed_count: 11,
    average_cost: 2800
  },
  {
    yelp_id: "park-shore-retirement-community-seattle-seattle",
    bed_count: 24,
    average_cost: 2900
  },
  {
    yelp_id: "skyline-at-first-hill-seattle",
    bed_count: 18,
    average_cost: 3100
  },
  {
    yelp_id: "mirabella-seattle-seattle-2",
    bed_count: 20,
    average_cost: 3400
  },
  {
    yelp_id: "merrill-gardens-at-first-hill-seattle-2",
    bed_count: 28,
    average_cost: 3300
  },
  {
    yelp_id: "norse-home-seattle-2",
    bed_count: 17,
    average_cost: 2900
  },
  {
    yelp_id: "the-hearthstone-seattle",
    bed_count: 26,
    average_cost: 3000
  },
  {
    yelp_id: "keiro-nursing-home-seattle",
    bed_count: 16,
    average_cost: 2900
  },
  {
    yelp_id: "the-summit-at-first-hill-seattle",
    bed_count: 24,
    average_cost: 3000
  },
  {
    yelp_id: "european-senior-care-seattle-3",
    bed_count: 22,
    average_cost: 3200
  },
  {
    yelp_id: "stratford-at-maple-leaf-seattle-2",
    bed_count: 12,
    average_cost: 3100
  },
  {
    yelp_id: "nikkei-manor-seattle",
    bed_count: 24,
    average_cost: 2700
  },
  {
    yelp_id: "northaven-retirement-apartments-seattle",
    bed_count: 16,
    average_cost: 3400
  },
  {
    yelp_id: "university-house-wallingford-seattle",
    bed_count: 14,
    average_cost: 2900
  },
  {
    yelp_id: "university-house-wallingford-seattle",
    bed_count: 14,
    average_cost: 2900
  },
  {
    yelp_id: "pearly-jones-home-seattle",
    bed_count: 12,
    average_cost: 2900
  },
  {
    yelp_id: "the-cannon-house-seattle",
    bed_count: 10,
    average_cost: 2500
  },
  {
    yelp_id: "brookdale-admiral-heights-seattle",
    bed_count: 16,
    average_cost: 2800
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
