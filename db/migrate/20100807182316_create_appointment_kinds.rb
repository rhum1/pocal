class CreateAppointmentKinds < ActiveRecord::Migration
  def self.up
    create_table :appointment_kinds do |t|
      t.string :name
      t.text :description
      t.integer :duration
	  t.integer :doctor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :appointment_kinds
  end
end
