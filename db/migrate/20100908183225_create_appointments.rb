class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.references :appointment_kind
      t.references :patient
	  t.references :doctor
      t.time :start_time
	  t.date :start_date
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
