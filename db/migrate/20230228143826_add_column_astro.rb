class AddColumnAstro < ActiveRecord::Migration[7.0]
  def change
    add_column :astros, :category, :integer
  end
end
