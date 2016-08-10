class User < ActiveRecord::Base
  has_many :favorites
  has_many :comparisons
  has_many :providers,  through: :user_favorites
  validates :uid, :provider, presence: true
   #:name

   def self.find_or_create_from_omniauth(auth_hash)
     # Find or create a user

     user = self.find_by(uid: auth_hash["uid"], provider: auth_hash["provider"])
     if !user.nil?
       return user
     else
       user = User.new
       user.provider  = auth_hash["provider"]
       user.uid       = auth_hash["uid"]
       user.name      = auth_hash["info"]["name"]
       user.email     = auth_hash["info"]["email"]
       user.image     = auth_hash["info"]["image"]
     end
       if user.save
         return user
       else
         return nil
       end
     end

    def favorited?(provider)
      !Favorite.find_by(user: self, provider: provider).nil?
    end
  end
