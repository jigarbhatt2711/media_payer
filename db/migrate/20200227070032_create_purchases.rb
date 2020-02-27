class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :purchase_option, null: false, foreign_key: true
      t.references :purchasable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
