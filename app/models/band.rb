class Band < ActiveRecord::Base
  has_many :bands_gigs
  has_many :gigs, :through => :bands_gigs
end
