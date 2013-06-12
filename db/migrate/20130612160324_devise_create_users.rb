class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.rememberable

      t.timestamps
    end

    add_index :users, :email,                :unique => true
  end

  def self.down
    drop_table :users
  end
end
