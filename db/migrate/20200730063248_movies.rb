class Movies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :video_id
      t.text :description, limit: 70000
      t.string :title
      t.belongs_to :user

      t.timestamps
    end
  end
end
