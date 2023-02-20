class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string  :name
      t.string  :email
      t.integer :height, limit: 1
      t.integer :width, limit: 1
      t.integer :number_of_mine, limit: 1
      t.integer :data, array: true, using: 'gin'

      t.timestamps
    end
  end
end
