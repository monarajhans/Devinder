class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :title
      t.string :decsription
      t.integer :rating
      t.integer :total_ratings
      t.string :password_digest

      t.timestamps
    end
  end
end
