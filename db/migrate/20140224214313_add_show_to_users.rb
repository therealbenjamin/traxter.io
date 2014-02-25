class AddShowToUsers < ActiveRecord::Migration
  def change
    add_column :users, :venue, :string
    add_column :users, :date, :timestamp
    add_column :users, :radius, :integer
    add_column :users, :days_prior, :integer
    add_column :users, :days_after, :integer
  end
end
