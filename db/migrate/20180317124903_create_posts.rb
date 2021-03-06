class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :post_type, default: 0
      t.string :title
      t.text :body
      t.references :parent
      t.references :owner_user, references: :users, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
