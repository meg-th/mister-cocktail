class CreateRecipeAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_amounts do |t|
      t.integer :amount
      t.string :description
      t.references :ingredient, null: false, foreign_key: true
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
