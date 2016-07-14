class AddProgramsToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :program, index: true, foreign_key: true
  end
end
