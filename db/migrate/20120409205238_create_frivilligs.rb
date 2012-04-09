class CreateFrivilligs < ActiveRecord::Migration
  def change
    create_table :frivilligs do |t|

      t.timestamps
    end
  end
end
