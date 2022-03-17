# frozen_string_literal: true

# Attendee exercise
class Attendee
  attr_reader :height, :pass_id

  # Make new attendees
  def initialize(height)
    @height = height
  end

  # Allow people to buy a pass
  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  # Revoke the pass
  def revoke_pass!
    @pass_id = nil
  end
end
