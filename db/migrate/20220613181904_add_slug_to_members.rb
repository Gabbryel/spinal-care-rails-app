class AddSlugToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :slug, :string, default: nil
  end
end
