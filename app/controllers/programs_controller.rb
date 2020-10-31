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
      render json: 'Error during creation: ' + program.errors, status: :unprocessable_entity
    end
  end

  private

  def programs_params
    params.permit(:name, :progress, :author, :description, :private, :category)
  end
end
