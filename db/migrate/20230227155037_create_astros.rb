class CreateAstros < ActiveRecord::Migration[7.0]
  def change
    create_table :astros do |t|
      t.string :name
      t.text :description
      t.float :rating
      t.float :daily_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
