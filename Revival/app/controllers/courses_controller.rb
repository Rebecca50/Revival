class CoursesController < ApplicationController
  def index
    courses = Record.pluck(:short_title).uniq
    render json: courses.to_json
  end

  def show
    course = Record.find(params[:id])
    render json: course.to_json
  end

end
