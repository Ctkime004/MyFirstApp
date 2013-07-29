class PpcAdCopy < ActiveRecord::Base
  attr_accessible :CPC, :Clicks, :Conversions, :Impressions, :title, :line_1, :line_2, :display_url, :landing_page_url
  belongs_to :experiment
end
