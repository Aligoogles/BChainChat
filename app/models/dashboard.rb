class Dashboard < ApplicationRecord
  
  validates_uniqueness_of :name
  scope :public_dashboard, -> { where(is_private: false) }

  after_create_commit { broadcast_if_public }

  has_many :messages, dependent: :destroy
  
  has_many :participants, dependent: :destroy

  def broadcast_if_public
    broadcast_append_to 'dashboards' unless is_private
  end

  def self.create_private_dashboard(users, dashboard_name)
    single_dashboard = Dashboard.create(name: dashboard_name, is_private: true)
    users.each do |user|
      Participant.create(user_id: user.id, dashboard_id: single_dashboard.id)
    end
    single_dashboard
  end

  def participant?(dashboard, user)
    dashboard.participants.where(user: user).exists?
    Participant.where(user_id: user.id, dashboard_id: dashboard.id).exists?
  end
end
