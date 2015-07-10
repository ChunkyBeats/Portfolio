class AddPosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
