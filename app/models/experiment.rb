class Experiment < ActiveRecord::Base
  attr_accessible :details, :experimenttype, :startdate, :stopdate, :title, :user_id, :status
  belongs_to :user
  belongs_to :type, :foreign_key => "experimenttype"
  belongs_to :statuses, :foreign_key => "status"
  has_many :ppc_ad_copies, :dependent => :destroy

  validates :title, presence: true,
  					length: {minimum: 2}
  validates :user_id, presence: true
  validates :experimenttype, presence: true
  validates :startdate, presence: true if :active == true
  attr_readonly :experimenttype

  validate :validate_stop_date_after_start_date

  def validate_stop_date_after_start_date
    if stopdate && startdate
      errors.add("Stop Date", "needs to be after the start date") if stopdate < startdate
    end
  end

end
