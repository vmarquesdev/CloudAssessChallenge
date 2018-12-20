class CreateOrganisations < ActiveRecord::Migration[5.2]
  def self.up
    create_table :organisations do |t|
      t.string :title, null: false
      t.string :location, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :organisations
  end
end
