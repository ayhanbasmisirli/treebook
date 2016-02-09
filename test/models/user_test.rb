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


end
