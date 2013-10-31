class RegistrationsController < Devise::RegistrationsController
  
  def new
    @user = User.new
    1.times { @user.assets.build }
    end
  end
  
  # GET /places/1/edit
  def edit
    @user = User.find(params[:id])
    5.times { @User.assets.build }
  end
  
  #
  # Modified update method
  #
  def update
    # required for settings form to submit when password is left blank
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
    end

    @user = User.find(current_user.id)
    if @user.update_attributes(params[:user])
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
  end
end