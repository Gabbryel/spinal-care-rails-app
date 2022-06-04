class AddBtnTextToCarouselCards < ActiveRecord::Migration[6.1]
  def change
    add_column :carousel_cards, :btn_text, :string
  end
end
