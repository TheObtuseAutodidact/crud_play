class Skill < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true 

  enum status: %w(beginner intermediate expert)
end
