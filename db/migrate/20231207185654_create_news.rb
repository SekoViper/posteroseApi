class CreateNews < ActiveRecord::Migration[7.1]
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
