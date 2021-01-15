class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.float :amount
      t.boolean :typ

      t.timestamps
    end
  end
end
