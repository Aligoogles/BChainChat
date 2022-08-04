class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy rsvp]
  before_action :authenticate_user!

  # GET /events or /events.json
  def index
    @events = Event.all
  end

  #RSVP Button
  def rsvp
    case params[:type]
    when 'uprsvp'
      @event.uprsvp!(current_user)
    when 'downrsvp'
     @event.downrsvp!(current_user)
    else
      return redirect_to request.url, alert: "error"
    end
    respond_to do |format|
      format.html do
        redirect_to @event
      end
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(@event, partial: "events/event", locals: {event: @event})
      end
    end
  end

  # GET /events/1 or /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user

    respond_to do |format|
      if @event.save
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:image, :title, :date, :time, :location, :description, :limit, :attendees)
    end
end
