class Experiment < ActiveRecord::Base
  attr_accessible :details, :experimenttype, :startdate, :stopdate, :title, :user_id, :active
  belongs_to :user
  belongs_to :type, :foreign_key => "experimenttype"
  has_many :ppc_ad_copies, :dependent => :destroy

  validates :title, presence: true,
  					length: {minimum: 2}
  validates :user_id, presence: true
  validates :experimenttype, presence: true
  attr_readonly :experimenttype
end
