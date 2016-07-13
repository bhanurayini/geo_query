class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :is_active
      t.string :is_deleted
      t.jsonb :contact_name
      t.jsonb :contact_email
      t.jsonb :phone
      t.boolean :is_approved
      t.boolean :meeting_flag
      t.text :meeting_time
      t.string :wait_list
      t.string :safe_haven
      t.integer :start_age
      t.integer :end_age
      t.text :eligibility
      t.text :restrictions

      t.timestamps null: false
    end
  end
end
