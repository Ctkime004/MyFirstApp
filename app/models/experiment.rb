class Experiment < ActiveRecord::Base
  attr_accessible :createddate, :details, :experimenttype, :startdate, :stopdate, :title, :user_id
  belongs_to :user
end
