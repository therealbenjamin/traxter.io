class User < ActiveRecord::Base

  has_many :tours

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   after_validation :normalize_username, on: :create

   def self.find_for_database_authentication condition
   	self.where(:username => condition[:email]).first || self.where(:email => condition[:email]).first
   end

   protected

   def normalize_email
   	self.email.downcase! if self.email
   end
end
