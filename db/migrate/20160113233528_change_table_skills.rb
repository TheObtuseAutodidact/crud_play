class ChangeTableSkills < ActiveRecord::Migration
  def change
    change_column :skills, :status, :string, default: "beginner"
  end
end
