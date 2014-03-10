class Venue < ActiveRecord::Base

  belongs_to :user
  has_many :shows

  validates :name, :address, :city, :state, :box_office_phone, :box_office_email, :contact_phone, :contact_email, presence: true


end
