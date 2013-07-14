class Experiment < ActiveRecord::Base
  attr_accessible :createddate, :details, :experimenttype, :startdate, :stopdate, :title, :userid
end
