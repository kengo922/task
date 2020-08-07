class TeachersController < ApplicationController

  def index
    @q = Teacher.ransack(params[:q])
    @departments = Department.all
    @subjects = Subject.all
    @days = Day.all
    @limits = Limit.all
    @teachers = @q.result.includes(:department, :subject, :day ,:limit)
  end

  def search
    @q = Teacher.ransack(params[:q])
    @departments = Department.all
    @subjects = Subject.all
    @days = Day.all
    @limits = Limit.all
    @teachers = @q.result.includes(:department, :subject, :day ,:limit)
  end
end
