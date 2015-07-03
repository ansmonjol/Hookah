class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.datetime :created_ad
      t.datetime :updated_at
      t.integer :offer_id
      t.integer :user_id
      t.string :status

      t.timestamps null: false
    end
  end
end
