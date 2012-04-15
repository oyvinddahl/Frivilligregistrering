class AddInterestsToFrivillig < ActiveRecord::Migration
  def change
    add_column :frivilligs, :vakt, :boolean
    add_column :frivilligs, :bar, :boolean
    add_column :frivilligs, :kjokken, :boolean
    add_column :frivilligs, :scene, :boolean
    add_column :frivilligs, :bandhost, :boolean
    add_column :frivilligs, :seminar, :boolean
    add_column :frivilligs, :opprigg, :boolean
    add_column :frivilligs, :nedrigg, :boolean
    add_column :frivilligs, :barn, :boolean
    add_column :frivilligs, :billettsalg, :boolean

  end
end