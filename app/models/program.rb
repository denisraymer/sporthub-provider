class Program < ApplicationRecord
  validates :progress, numericality: {greater_than: 0, allow_nil: true}
  validates :name, :author, :category, presence: true

  after_initialize {p 'initialize'} # Program.new Program.first
  after_save {p 'save'} # Program.create Program.save
  after_create {p 'create'} # Program.create
  after_update {p 'update'} # Program.update
  after_destroy {p 'destroy'} # Program.last.destroy

end
