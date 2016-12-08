class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.float :lng
      t.float :lat
      t.time :open
      t.time :close
      t.json :extra
      t.string :image
      t.string :lang

      t.timestamps
    end
  end
end
