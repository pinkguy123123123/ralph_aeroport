class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.references :group, foreign_key: true
      t.string :name
      t.string :firstname
      t.string :email
      t.integer :age
      t.boolean :sex
      t.string :des1
      t.string :des2
      t.string :des3
      t.timestamps
    end
  end
end
