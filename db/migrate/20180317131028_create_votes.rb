class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user
      t.references :post, foreign_key: true
      t.integer :vote_type

      t.timestamps
    end
  end
end
