class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.datetime :appt_time

      t.timestamps null: false
    end
  end
end
