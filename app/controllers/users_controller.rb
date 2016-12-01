class UsersController < ApplicationController
	# Remember to add before_filter :authorize to any controllers that 
	# should be blocked without proper login



  # unconnected page for determining client IP. Maybe used for distance soon
  def ip
    # render plain: request.remote_ip
    # @ip = Geocoders::IpGeocoder.geocode(request.remote_ip)
    # render plain: request.remote_ip


  end



  def main
    redirect_to '/signup' unless current_user
    @users = User.all
  end
  def new
  	@user = User.new
  end



  def create

  	@user = User.new(user_params)
    if @user.save

      session[:user_id] = @user.id
      flash[:alert] = "User #{@user.first_name} #{@user.last_name} created."
      redirect_to '/main'
      # render plain: ' In saved'

    else

      render 'users/new'
    end
  end


  def edit
    @user = current_user
  end

  def update
    # render plain: user_params
    @user = User.find(params[:id])
    # render plain: "In update"
    # render plain: user_params

    # render plain: current_user.first_name
    # @user = User.find_by_id(current_user.id)
    # @user.update(user_params)
    if @user.update_attributes(user_params)
       # current_user = @user
      # render plain: @user.first_name
      redirect_to '/main'
    else
      render plain: @user.errors.first
    end
    
  end
  def ch_password

  end

  def update_password
    @user = User.find_by_id(current_user.id)
    if @user.authenticate(params[:update][:old_password]) && params[:update][:password] ==params[:update][:password_confirmation]
      @user.password = params[:update][:password]
      if @user.save
          # render plain: "Correct old password and new passwords match"
          redirect_to '/main'
      else
          render plain: @user.errors.first
      end
    else
      render plain: "Wrong password entered"
    end
  end


  # holding page to be replaced by real page eventually.
  def holding_page


  end
  # for all unfoundpages that require 404
  def not_found
  end
  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :street, :city, :state, :zip)

    end
end
