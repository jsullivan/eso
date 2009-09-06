class BandsGigs < ActiveRecord::Base
  belongs_to :band
  belongs_to :gig
end
