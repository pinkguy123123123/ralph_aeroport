class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :groupname
      t.string :code
      t.string :des1
      t.string :des2
      t.string :des3

      t.timestamps
    end
  end
end
