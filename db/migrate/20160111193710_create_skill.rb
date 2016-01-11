class CreateSkill < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.integer :status, default: 0
    end
  end
end
