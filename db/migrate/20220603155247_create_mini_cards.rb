class CreateMiniCards < ActiveRecord::Migration[6.1]
  def change
    create_table :mini_cards do |t|
      t.string :text

      t.timestamps
    end
  end
end
