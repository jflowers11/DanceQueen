class CreateClassTimes < ActiveRecord::Migration
  def change
    create_table :class_times do |t|
      t.integer :user_id
      t.integer :class_id
      t.time :time

      t.timestamps
    end
  end
end
