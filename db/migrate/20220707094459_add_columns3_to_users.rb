class AddColumns3ToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :aicon, :string
  end
end
