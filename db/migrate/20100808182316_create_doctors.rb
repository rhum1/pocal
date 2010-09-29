class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
