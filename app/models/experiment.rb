class Experiment < ActiveRecord::Base
  attr_accessible :details, :experimenttype, :startdate, :stopdate, :title, :user_id, :status
  belongs_to :user
  belongs_to :type, :foreign_key => "experimenttype"
  belongs_to :statuses, :foreign_key => "status"
  has_many :ppc_ad_copies, :dependent => :destroy
  has_many :emails, :dependent => :destroy

  validates :title, presence: true
  validates :user_id, presence: true
  validates :status, presence: true
  validates :experimenttype, presence: true
  validates :startdate, presence: true, if: :status_is_in_progress_or_completed

  def status_is_in_progress_or_completed
    status == "2" or "3"
  end

  validates :stopdate, presence: true, if: :status_is_completed

  def status_is_completed
    status == "3"
  end

  attr_readonly :experimenttype

  validate :validate_stop_date_after_start_date

  def validate_stop_date_after_start_date
    if stopdate && startdate
      errors.add("Stop Date", "needs to be after the start date") if stopdate < startdate
    end
  end

end
