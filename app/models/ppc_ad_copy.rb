class PpcAdCopy < ActiveRecord::Base
  attr_accessible :CPC, :Clicks, :Conversions, :Impressions, :title, :line_1, :line_2, :display_url, :landing_page_url, :option_title
  belongs_to :experiment
  
  validates :title, length: {maximum: 25}
  validates :line_1, length: {maximum: 35}
  validates :line_2, length: {maximum: 35}
  validates :display_url, length: {maximum: 35}

  before_save :calculate_percentages

	def calculate_percentages
		self.click_percentage = (self.Clicks.to_f / self.Impressions) * 100 
		self.conversion_percentage = (self.Conversions.to_f / self.Clicks) * 100
		self.total_cost = self.Clicks * self.CPC
		self.cost_per_conversion = (self.Clicks * self.CPC) / self.Conversions
	end

end
