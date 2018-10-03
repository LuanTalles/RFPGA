class SeatsController < ApplicationController
  before_action :set_seat, only: [:show, :edit, :update, :destroy, :use, :free]

  # GET /seats
  # GET /seats.json
  def index
    @seats = Seat.all
  end

  # GET /seats/1
  # GET /seats/1.json
  def show
  end

  def use
    # @seat = Seat.find(params[:id])
    @seat.user_id = current_user.id
    @seat.time_that_user_sat = DateTime.now
    @seat.last_user_sat_id = current_user.id
    @seat.save

  end

  # def free
  #   @seat_free = Seat.where(user_id: current_user.id)
  #   # @seat_free.user_id = nil
  #   # @seat.time_that_user_sat = DateTime.now
  #   # @seat_free.save
  # end

  def free
      # @seat = Seat.find(params[:id])
      @seat.user_id = nil
      @seat.save
  end

  # GET /seats/new
  def new
    @seat = Seat.new
    @fpgas = Fpga.all
  end

  # GET /seats/1/edit
  def edit
    @fpgas = Fpga.all
  end

  # POST /seats
  # POST /seats.json
  def create
    @seat = Seat.new(seat_params)

    respond_to do |format|
      if @seat.save
        format.html { redirect_to seats_url, notice: 'Seat was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render :new }
        format.json { render json: @seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seats/1
  # PATCH/PUT /seats/1.json
  def update
    respond_to do |format|
      if @seat.update(seat_params)
        # format.html { redirect_to @seat, notice: 'Seat was successfully updated.' }
        # format.json { render :show, status: :ok, location: @seat }
      else
        format.html { render :edit }
        format.json { render json: @seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seats/1
  # DELETE /seats/1.json
  def destroy
    @seat.destroy
    respond_to do |format|
      format.html { redirect_to seats_url, notice: 'Seat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat
      @seat = Seat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_params
      params.require(:seat).permit(:name, :fpga_id, :user_id)
    end
end
