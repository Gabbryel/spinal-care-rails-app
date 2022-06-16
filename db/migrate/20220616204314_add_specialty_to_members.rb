class AddSpecialtyToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :specialty, :string
  end
end
