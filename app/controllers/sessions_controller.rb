class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password]) || (user = new_user)
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      redirect_to root_url, alert: 'Please enter valid credentials'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

  private

  def password_digest
    BCrypt::Password.create(params['password'])
  end

  def new_user
    User.create(email: params[:email], password_digest: password_digest)
  end
end
