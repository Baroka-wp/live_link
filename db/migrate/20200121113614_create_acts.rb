class CreateActs < ActiveRecord::Migration[5.2]
  def change
    create_table :acts do |t|
      t.string :name
      t.string :url
      t.timestamps
      t.references :live, foreign_key: true
    end
  end
end
