class CreateCategoriesPaymmentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :payments
  end
end
