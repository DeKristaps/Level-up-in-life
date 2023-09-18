class CreateSkils < ActiveRecord::Migration[7.0]
  def change
    create_table :skils do |t|
      t.string :strength
      t.string :dexterity 
      t.string :constitution
      t.string :intelligence 
      t.string :wisdom
      t.string :charisma
      t.timestamps
    end
  end
end
