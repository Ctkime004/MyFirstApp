class Experiment < ActiveRecord::Base
  attr_accessible :details, :experimenttype, :startdate, :stopdate, :title, :user_id
  belongs_to :user

  validates :title, presence: true,
  					length: {minimum: 2}
  validates :user_id, presence: true
end
