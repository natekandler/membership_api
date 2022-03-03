class CreateContactGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_groups do |t|
      t.belongs_to :contact
      t.belongs_to :group
      t.column :status, :integer, default: 0
      t.timestamps
    end
  end
end