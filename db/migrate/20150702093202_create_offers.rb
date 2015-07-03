class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
