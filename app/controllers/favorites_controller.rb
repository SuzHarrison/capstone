class FavoritesController < ApplicationController
# before_action :require_login

  def index
    @user = params[:user_id]
    @provider = Provider.where(yelp_id: (params[:provider_id]))
    @favorites = Favorite.where(user_id: @user)

  end

  def create
    @provider = Provider.find_or_create_by(yelp_id: (params[:provider_yelp_id]))
    @user = User.find(params[:user_id])
    if Favorite.find_by(user: @user, provider: @provider)
      flash[:notice] = 'This provider was already in your list'
      return render :index
    end

    @favorite = Favorite.create({
      user_id:  @user.id,
      provider_id: @provider.id
      })

    if @favorite && @provider
      flash[:notice] = 'This provider was added to your list'
      redirect_to user_favorites_path(@user.id, @provider.id)
    else
      flash[:notice] = 'This provider was not added to your list'
      render :index
    end
  end

  def update
    @favorite = Favorite.find(params[:id])
    if @favorite.update(notes: params[:favorite][:notes])
      redirect_to user_favorites_path, notice: 'Note was successfully updated.'
    else
      render :user_favorites_path
    end
  end

  def destroy
    @favorite = Favorite.where(user_id: params[:user_id], provider_id: params[:id])
    @user = User.find(params[:user_id])
    @user.favorites.delete(@favorite)
    redirect_to user_favorites_path
  end
    # @provider = Provider.where(yelp_id: (params[:provider_id]))
    # current_user.favorites << @provider
    # flash[:notice] = 'This provider was added to your list'
    # redirect_to root_path
    # rescue
    # flash[:notice] = 'This provider was not added to your list'
    # redirect_to user_favorites_path(current_user.id)
end
