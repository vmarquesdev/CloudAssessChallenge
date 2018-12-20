class AddPersonsToUsers < ActiveRecord::Migration[5.2]
  def self.up
    add_column :people, :user_id, :integer, null: false, index: true, default: 1
    add_foreign_key :people, :users, on_delete: :cascade
  end

  def self.down
    remove_column :people, :user_id
    remove_index :people, :user_id
    remove_foreign_key :people, :user_id
  end
end
