class AddFieldsToVolenteer < ActiveRecord::Migration
  def change
    add_column :frivilligs, :name, :string
    add_column :frivilligs, :email, :string
    add_column :frivilligs, :phone, :string
    add_column :frivilligs, :desc, :text
    add_column :frivilligs, :arriving_date, :string
    add_column :frivilligs, :leaving_date, :string
    add_column :frivilligs, :wishes, :integer
    
  end
end