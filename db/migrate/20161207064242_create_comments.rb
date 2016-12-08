class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :point, foreign_key: true
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
