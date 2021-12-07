class EventsController < ApplicationController
  before_action :check_logged_in, :only => [:new, :create ]
  before_action :authenticate_user, except: [:index, :new]
  def index
  @events=Event.all
  end

  def new
  @event=Event.new
  end

  def create
    event_params = params.require(:event).permit(:artist, :price_A, :price_B, :price_C, :price_D, :price_GC, :description, :event_date)
    @event = Event.new(event_params)
    if @event.save
      flash[:komunikat] = 'Event został poprawnie stworzony.'
      redirect_to "/events/#{@event.id}"
    else
      render 'new'
    end
    write_json  
  end
  
  def show
    @event = Event.find(params[:id])
  end
      private
      def check_logged_in
        authenticate_or_request_with_http_basic("Ads") do |username, password|
          username == "admin"&&password=="admin"
        end
      end
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:artist, :price_A, :price_B, :price_C, :price_D, :price_GC, :description, :event_date, :event_id)
    end
end
