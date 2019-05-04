class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.text :todo
      t.datetime :due
      t.boolean :completed
      t.integer :priority
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
