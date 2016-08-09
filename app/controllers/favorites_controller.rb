class FavoritesController < ApplicationController
# before_action :require_login

  def index
    @user = params[:user_id]
    @provider = Provider.where(yelp_id: (params[:provider_id]))
    @favorites = Favorite.all
  end

  def create
    @provider = Provider.where(yelp_id: (params[:provider_id]))
    @user = User.find(params[:user_id])
    @favorite = Favorite.new({
      user_id:  params[:user_id],
      provider_id: params[:provider_id]
      })


    if @favorite.save
      redirect_to user_favorites_path(@user, @provider)
    else
      render :index
    end
  end
    # @provider = Provider.where(yelp_id: (params[:provider_id]))
    # current_user.favorites << @provider
    # flash[:notice] = 'This provider was added to your list'
    # redirect_to root_path
    # rescue
    # flash[:notice] = 'This provider was not added to your list'
    # redirect_to user_favorites_path(current_user.id)
  end
