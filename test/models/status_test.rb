require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	
	test "Status needs a content" do
	 	status = Status.new
	 	assert_not status.save
	 	assert_not status.errors[:content].empty?
	end 
	test "Status content at least 2 letters long" do
		status = Status.new
		status.content = 'H'
		assert_not status.save
		assert_not status.errors[:content].empty?
	end
	test "Status must have a user id" do
		status = Status.new
		status.content = "Hello"
		assert_not status.save
		assert_not status.errors[:user_id].empty?
	end

end
