class CreateClassStyles < ActiveRecord::Migration
  def change
    create_table :class_styles do |t|
      t.integer :user_id
      t.string :latin
      t.string :partner
      t.string :freestyle

      t.timestamps
    end
  end
end
