class AddAlternateDomain < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :domain, :string
    add_index :events, :domain
  end
end
