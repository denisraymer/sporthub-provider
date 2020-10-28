class Program < ApplicationRecord
  validates :progress, numericality: {greater_than: 0, allow_nil: true}
  validates :name, :author, :category, presence: true
end
