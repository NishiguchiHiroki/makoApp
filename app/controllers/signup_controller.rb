class SignupController < ApplicationController
  
  def step1
    @user = User.new
  end
  
  def step2
    @user = User.new
  end

  def step3
    @address = Address.new
  end

  def done
    
  end

  def create
    @user = User.new(
      last_name: session[:last_name], 
      first_name: session[:first_name], 
      last_name_kana: session[:last_name_kana], 
      first_name_kana: session[:first_name_kana], 
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
      email: session[:email],
      phone_number: session[:phone_number],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
    )

    @address = Address.create(
      user: @user,
      postal_code: session[:postal_code],
      prefecture_id: session[:prefecture_id],
      city: session[:city],
      house_number: session[:house_number],
      building_name: session[:building_name],
    )

    if @user.save
      reset_session
      session[:id] = @user.id
      sign_in User.find(session[:id]) unless user_signed_in?
      redirect_to root_path
      flash[:notice] = "ユーザー登録が完了しました"
    else
      reset_session
      redirect_to step1_signup_index_path
    end
    
    
  end

 

  def save_to_session_step1
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birthdate_year] = user_params[:birthdate_year]
    session[:birthdate_month] = user_params[:birthdate_month]
    session[:birthdate_day] = user_params[:birthdate_day]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    redirect_to step2_signup_index_path
    
  end

  def save_to_session_step2
    session[:phone_number] = phone_number_params[:phone_number]
    redirect_to step3_signup_index_path
  end

  def save_to_session_step3
    session[:postal_code] = address_params[:postal_code]
    session[:prefecture_id] = address_params[:prefecture_id]
    session[:city] = address_params[:city]
    session[:house_number] = address_params[:house_number]
    session[:building_name] = address_params[:building_name]
    redirect_to done_signup_index_path
  end

  private
  def user_params
    params.require(:user).permit(
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birthdate_year,
      :birthdate_month,
      :birthdate_day,
      :email,
      :password,
      :password_confirmation,
    )
  end

  def phone_number_params
    params.require(:user).permit(
      :phone_number
    )
  end

  def address_params
    params.require(:address).permit(
      :postal_code,
      :prefecture_id,
      :city,
      :house_number,
      :building_name,
    )
  end
end
