class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest, null: false
      t.string :token, null: false, index: { unique: true }
      t.string :email

      t.timestamps null: false
    end
  end
end
