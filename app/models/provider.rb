class Provider < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :user_favorites
  has_many :comparisons, through: :provider_comparisons
end
