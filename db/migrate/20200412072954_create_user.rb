class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamp :created_at
      t.timestamp :updated_at
      t.string :email, unique: true

    end
  end
end
