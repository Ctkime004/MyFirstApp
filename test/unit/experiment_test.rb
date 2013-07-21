require 'test_helper'

class ExperimentTest < ActiveSupport::TestCase
	test "that an experiment requires a title" do
  		experiment = Experiment.new
  		assert !experiment.save
  		assert !experiment.errors[:title].empty?
  	end

	test "that an experiment's title is at least 2 letters long" do
		experiment = Experiment.new
		experiment.title = "H"
		assert !experiment.save
		assert !experiment.errors[:title].empty?
	end
	test "that an expriment has a user id" do
		experiment = Experiment.new
		experiment.title = "Experiment1"
		assert !experiment.save
		assert !experiment.errors[:user_id].empty?
	end
end
