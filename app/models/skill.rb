class Skill < ActiveRecord::Base

  enum status: %w(beginner intermediate expert)
end
