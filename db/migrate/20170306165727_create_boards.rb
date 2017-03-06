class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :title,             null: false, default: ""
      t.belongs_to :user
      
      t.timestamps
    end
    add_index :boards, [:user_id, :created_at]
  end
end
