class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
  end
end
