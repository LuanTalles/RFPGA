module SeatsHelper

  def free
    @seat_free = Seat.where(user_id: current_user.id)
    flash[:notice] = "user id = #{@seat_free.name}"
    # @seat.time_that_user_sat = DateTime.now
    # @seat_free.save
  end

end
