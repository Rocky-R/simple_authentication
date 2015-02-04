class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
  @teacher = teacher.new(teacher_params)
  if @teacher.save
    redirect_to root_url, :notice => "Registered!"
  else
    render "new"
  end

  def teacher_params
    params.require(:teacher).permit(:email, :name)
  end
end
