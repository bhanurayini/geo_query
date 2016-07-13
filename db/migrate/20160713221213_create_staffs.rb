class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title
      t.jsonb :contact_info

      t.timestamps null: false
    end
  end
end
