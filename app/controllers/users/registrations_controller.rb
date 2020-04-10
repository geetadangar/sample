class Users::RegistrationsController < Devise::RegistrationsController
	def new
@country = Country.all
@city = City.all
@state = State.all
super
end

def  create
c = User.new(user_params)
c.save
super
redirect_to sign_in_path
end
def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :city_id)
  end
end
