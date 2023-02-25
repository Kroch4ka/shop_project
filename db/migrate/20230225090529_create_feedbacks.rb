class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :title, null: false
      t.integer :tag, null: false, default: 0
      t.integer :points, null: false, default: 0
      t.text :detail, null: false
      t.timestamps
    end
  end
end
