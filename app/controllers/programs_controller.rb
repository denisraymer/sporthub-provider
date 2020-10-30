class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def create
    render body: 'created'
  end

  def show
  end
end
