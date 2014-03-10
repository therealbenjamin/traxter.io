class Show < ActiveRecord::Base

  belongs_to :venue
  belongs_to :user

  validates :venue, :date, :guarantee, :structure, :radius, :days_prior, :days_after, :is_confirmed, :has_conflict, :is_rejected, :ticket_counts_preference, presence: true
end
