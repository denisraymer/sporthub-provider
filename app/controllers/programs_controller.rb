class ProgramsController < ApplicationController
  def index
    @programs = Program.all

    render body: @programs.map { |program| "#{program.name} | #{program.progress} | #{program.category}" }
  end

  def show
  end
end
