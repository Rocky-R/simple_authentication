class SessionsController < ApplicationController
  def new
  end

  def create
    teacher = Teacher.authenticate(params[:email], params[:password])
    if teacher
      session[:teacher_id] = teacher.id
      redirect_to root_url, :notice => "Logged in!"
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
