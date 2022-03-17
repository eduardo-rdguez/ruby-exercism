# frozen_string_literal: true

require 'minitest/autorun'
require './lib/instance_variables/attendee.rb'

# Test attendee exercise
class AttendeeTest < Minitest::Test
  def test_new_instance
    height = 100
    assert_equal Attendee, Attendee.new(height).class
  end

  def test_new_instance_height
    height = 100
    attendee = Attendee.new(height)
    assert_equal height, attendee.height
  end

  def test_new_instance_pass_id
    height = 100
    attendee = Attendee.new(height)
    assert_nil attendee.pass_id
  end

  def test_issue_pass
    height = 100
    pass_id = 1
    attendee = Attendee.new(height)
    attendee.issue_pass!(pass_id)
    assert_equal pass_id, attendee.pass_id
  end

  def test_has_pass_after_revoked
    height = 100
    pass_id = 1
    attendee = Attendee.new(height)
    attendee.issue_pass!(pass_id)
    attendee.revoke_pass!
    assert_nil attendee.pass_id
  end
end