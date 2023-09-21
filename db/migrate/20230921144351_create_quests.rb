class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :xp_given, null: false, default: 1
      t.string :xp_for_stat, null: false, default: ''
      t.timestamps
    end
  end
end
