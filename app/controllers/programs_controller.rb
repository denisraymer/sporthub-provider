class ProgramsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @programs = Program.all
  end

  def create
    program = Program.create(programs_params)

    if program.persisted?
      render json: 'Created a program: ' + program.name, status: :created
    else
      render json: 'Error during creation: ', status: :unprocessable_entity
    end
  end

  def show
    unless (@program = Program.where(id: params[:id]).first)
      render body: 'Page not found', status: 404
    end
  end

  private

  def programs_params
    params.permit(:name, :progress, :author, :description, :private, :category)
  end
end
