class Experiment < ActiveRecord::Base
  attr_accessible :details, :experimenttype, :startdate, :stopdate, :title, :user_id
  belongs_to :user
  belongs_to :type, :foreign_key => "experimenttype"
  has_many :ppc_ad_copies

  validates :title, presence: true,
  					length: {minimum: 2}
  validates :user_id, presence: true
end
