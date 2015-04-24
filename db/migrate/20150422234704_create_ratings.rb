class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :game, index: true
      t.integer :rating

      t.timestamps
    end
  end
end
