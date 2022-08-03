class Message < ApplicationRecord
  belongs_to :user
  belongs_to :dashboard

  after_create_commit { broadcast_append_to dashboard }

  before_create :confirm_participant

  def confirm_participant
    return unless dashboard.is_private
    is_participant = Participant.where(user_id: user.id, dashboard_id: dashboard.id).first
    throw :abort unless is_participant
  end
end
