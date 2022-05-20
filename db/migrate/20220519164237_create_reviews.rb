class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :context
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
