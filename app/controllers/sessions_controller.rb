class SessionsController < ApplicationController
  def log_in
    @email = params[:email]
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id
      redirect_to parents_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
