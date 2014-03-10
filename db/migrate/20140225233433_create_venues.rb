class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.string :box_office_phone
      t.string :box_office_email
      t.string :contact_phone
      t.string :contact_email
      t.references :user, index: true

      t.timestamps
    end
  end
end
