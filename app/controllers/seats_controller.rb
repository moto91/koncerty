class EventsController < ApplicationController
  before_action :authenticate_user, except: [:index]
  def index
  @seats=Seat.all
  end

  def show
    @seat = Seat.find(params[:id])
  end
      private
      def check_logged_in
        authenticate_or_request_with_http_basic("Ads") do |username, password|
          username == "admin"&&password=="admin"
        end
      end
    # Use callbacks to share common setup or constraints between actions.
    def set_seat
      @seat = Seat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seat_params
      params.require(:seat).permit(:seat_number :price, :seat_id)
    end

    def price_sector
      price_sector = seat.price.where(seat_id_seq = seat.seat_number)
    end
end
