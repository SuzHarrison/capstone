class Comparison < ActiveRecord::Base
  has_many :providers
  belongs_to :user
end
