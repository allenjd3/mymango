class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.belongs_to :user, null: false
      t.string :title
      t.datetime :published

      t.timestamps
    end
  end
end
