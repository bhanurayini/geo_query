class AddOrganizationsToPrograms < ActiveRecord::Migration
  def change
    add_reference :programs, :organization, index: true, foreign_key: true
  end
end
