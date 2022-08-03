class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = User.all_except(current_user)

    @dashboard = Dashboard.new
    @dashboards = Dashboard.public_dashboard
    @dashboard_name = get_name(@user, current_user)
    @single_dashboard = Dashboard.where(name: @dashboard_name).first || Dashboard.create_private_dashboard([@user, current_user], @dashboard_name)

    @message = Message.new
    @messages = @single_dashboard.messages.order(created_at: :asc)
    render 'dashboards/index'
  end

  private

  def get_name(user1, user2)
    user = [user1, user2].sort
    "private_#{user[0].id}_#{user[1].id}"
  end

end
