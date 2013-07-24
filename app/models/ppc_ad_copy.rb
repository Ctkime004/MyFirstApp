class PpcAdCopy < ActiveRecord::Base
  attr_accessible :CPC, :Clicks, :Conversions, :Impressions
  belongs_to :experiment
end
