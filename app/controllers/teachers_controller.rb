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
    @q = Teacher.search(search_params)

    @teachers = @q.result.includes(:department, :subject, :day ,:limit)
  end

  private
  def search_params
    params.require(:q).permit(:name_cont, :department_id_eq, :subject_id_eq, :day_id_eq, :limit_id_eq)
  end
end
