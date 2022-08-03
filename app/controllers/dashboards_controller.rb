class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @dashboard = Dashboard.new
    @dashboards = Dashboard.public_dashboard

    @users = User.all_except(current_user)
    render "index"
  end

  def create
    @dashboard = Dashboard.create(name: params['dashboard']['name'])
  end

  def show
    @single_dashboard = Dashboard.find(params[:id])

    @dashboard = Dashboard.new
    @groups = Dashboard.public_dashboard

    @message = Message.new
    @messages = @single_dashboard.messages.order(created_at: :asc)

    @users = User.all_except(current_user)
    render "index"
  end
end
