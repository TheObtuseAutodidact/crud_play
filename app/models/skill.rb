class Skill < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true

  def increase_status
    index = statuses.index(status)

    if (0..1).include?(index)
      index += 1
      self.status = statuses[index]
    end
  end

  def statuses
    ["beginner", "intermediate", "expert"]
  end
end
