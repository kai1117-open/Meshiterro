class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.string :string
      t.string :caption
      t.string :text
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
