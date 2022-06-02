class CreateCarouselCards < ActiveRecord::Migration[6.1]
  def change
    create_table :carousel_cards do |t|
      t.string :line_one
      t.string :line_two
      t.string :btn

      t.timestamps
    end
  end
end
