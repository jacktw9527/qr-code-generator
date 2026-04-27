class CreateQrCodes < ActiveRecord::Migration[8.1]
  def change
    create_table :qr_codes do |t|
      t.timestamps
      t.references :user, null: false, foreign_key: true
      t.string :qr_token, null: false
      t.string :url, null: false
    end

    add_index :qr_codes, :qr_token, unique: true
  end
end
