class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :lesson
      t.text :translation
      # fields in ^ database
      t.timestamps
    end
  end
end
