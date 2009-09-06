class Gig < ActiveRecord::Base
  has_many :bands_gigs
  has_many :bands, :through => :bands_gigs
  belongs_to :venue 
end
