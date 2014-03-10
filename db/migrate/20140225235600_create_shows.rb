class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.datetime :date
      t.decimal :guarantee, precision: 11, scale: 2
      t.string :structure
      t.integer :radius
      t.integer :days_prior
      t.integer :days_after
      t.boolean :is_confirmed, default: false
      t.boolean :has_conflict, default: false
      t.boolean :is_rejected, default: false
      t.string :ticket_counts_preference
      t.references :venue, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
