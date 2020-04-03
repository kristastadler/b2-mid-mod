class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :title
      t.integer :thrill_rating

      t.timestamps
    end
  end
end
