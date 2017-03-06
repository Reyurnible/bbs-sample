class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content,             null: false, default: ""

      t.belongs_to :thread
      t.belongs_to :user
      t.timestamps
    end
  end
end
