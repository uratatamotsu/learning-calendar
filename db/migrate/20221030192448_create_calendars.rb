class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.integer :day_time,               null: false
      t.date :day,               null: false

      t.timestamps
    end
  end
end
