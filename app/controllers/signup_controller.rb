class SignupController < ApplicationController
  
  def index
    
  end

  def step1
    @user = User.new
  end
  
  def step2
    @user = User.new
  end

  def step3
    @address = User.new
  end

  def done
    
  end

  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :family_name,
      :first_name,
      :family_name_kana,
      :first_name_kana,
      :birthdate_year,
      :birthdate_month,
      :birthdate_day
    )
  end

  def address_params
    params.require(:address).permit(
      :postal_code,
      :prefecture_id,
      :city,
      :house_number,
      :building_name,
      :phone_number
    )
  end
end
