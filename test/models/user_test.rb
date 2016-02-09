require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter a first name" do
  	user = User.new
  	assert_not  user.save
  	assert_not user.errors[:first_name].empty?
  	
  end 
    test "a user should enter a last name" do
  	user = User.new
  	assert_not  user.save
  	assert_not user.errors[:last_name].empty?
   end 

   test "a user should enter a profile name" do
  	user = User.new
  	assert_not  user.save
  	assert_not user.errors[:profile_name].empty?
   end 
   test "a user should have a unique profile name" do
   	user = User.new
   	user.profile_name = users(:ayhan).profile_name
   	assert_not user.save
   	assert_not user.errors[:profile_name].empty?
   end 
 test "a user should have a profile name without spaces" do
   	user = User.new
   	user.profile_name = "My profile name"
   	assert_not user.save
   	assert_not user.errors[:profile_name].empty?
   	assert user.errors[:profile_name].include?("Must be formatted correctly")

   end 

end
