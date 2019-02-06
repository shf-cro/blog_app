class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :body
      t.string :image1
      t.integer :kind

      t.timestamps
    end
  end
end
