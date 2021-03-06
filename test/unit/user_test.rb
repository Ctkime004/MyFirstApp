require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "a user should enter a user name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:user_name].empty?
  end

  test "a user should have a unique user name" do
  	user = User.new
  	user.user_name = users(:corey).user_name

  	assert !user.save
  	assert !user.errors[:user_name].empty?
  end

  test "a user should have a user name without spaces" do
  	user = User.new(first_name: 'Corey', last_name: 'Kime', email: 'corey.kime12@gmail.com')
    user.password = user.password_confirmation = 'password'
  	user.user_name = "Profile name with spaces"

  	assert !user.save
  	assert !user.errors[:user_name].empty?
  	assert user.errors[:user_name].include?('Must be formatted correctly')
  end

  test "a user can have a correctly formatted profile name" do
    user = User.new(first_name: 'Corey', last_name: 'Kime', email: 'corey.kime12@gmail.com')
    user.password = user.password_confirmation = 'password'
    user.user_name = 'coreykime_1'
    assert user.valid?
  end
end
