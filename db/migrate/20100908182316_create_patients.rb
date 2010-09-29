class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :nom
      t.string :prenom
      t.date :birthday

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
