class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.column :user_id, :integer
      t.column :endorsement, :string

      t.timestamps
    end
  end
end
