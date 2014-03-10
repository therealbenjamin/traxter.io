class Show < ActiveRecord::Base

  belongs_to :tour
  has_one :venue

  validates :venue, :address, :city, :state, :latitude, :longitude, :date, :guarantee, :structure, :radius, :days_prior, :days_after, :is_confirmed, :has_conflict, :is_rejected, :ticket_counts_preference, presence: true
end
