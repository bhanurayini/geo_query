class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :ein
      t.string :name
      t.text :purpose
      t.string :address
      t.string :mailing_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :website
      t.string :email
      t.boolean :email_visible_flag
      t.jsonb :phone
      t.boolean :is_approved
      t.boolean :is_deleted
      t.boolean :is_active
      t.boolean :is_draft

      t.timestamps null: false
    end
  end
end
