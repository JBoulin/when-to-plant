class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :titre
      t.text :contenu
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
