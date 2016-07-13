class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :physical_address
      t.string :mailing_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :major_intersections
      t.string :address_status
      t.string :website
      t.jsonb :contact_name
      t.jsonb :contact_email
      t.jsonb :phone
      t.jsonb :service_hours
      t.text :service_hours_notes
      t.jsonb :hours
      t.text :other_eligibility
      t.string :case_management
      t.text :case_management_services
      t.boolean :donation_flag
      t.boolean :volunteer_flag
      t.text :volunteer_activity
      t.boolean :is_active
      t.string :is_deleted
      t.boolean :is_approved
      t.integer :start_age
      t.integer :end_age

      t.timestamps null: false
    end
  end
end
