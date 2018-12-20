class CreatePeople < ActiveRecord::Migration[5.2]
  def self.up
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.references :organisation, null: false, index: true
      t.integer :assessment_count, null: false, default: 0

      t.timestamps
    end

    add_foreign_key :people, :organisations, on_delete: :cascade
  end

  def self.down
    drop_table :people
    remove_index :people, :organisation_id
    remove_foreign_key :people, :organisation_id
  end
end
