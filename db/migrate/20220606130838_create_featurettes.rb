class CreateFeaturettes < ActiveRecord::Migration[6.1]
  def change
    create_table :featurettes do |t|
      t.string :title_one
      t.string :title_two
      t.text :content

      t.timestamps
    end
  end
end
