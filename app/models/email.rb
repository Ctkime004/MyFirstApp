class Email < ActiveRecord::Base
  attr_accessible :click_percentage, :clicks, :conversion_percentage, :conversions, :delivered, :delivery_percentage, :open_percentage, :open_to_click_percentage, :opens, :sends, :option_title
  belongs_to :experiment

  validates :option_title, presence: true

  before_save :calculate_percentages

  def calculate_percentages
  	self.delivery_percentage = (self.delivered.to_f / self.sends) * 100
  	self.click_percentage = (self.clicks.to_f / self.delivered) * 100
  	self.open_percentage = (self.opens.to_f / self.delivered) * 100
  	self.open_to_click_percentage = (self.clicks.to_f / self.opens) * 100
  	self.conversion_percentage = (self.conversions.to_f / self.clicks) * 100
  end
  
end
