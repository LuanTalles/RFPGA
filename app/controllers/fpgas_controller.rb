class FpgasController < ApplicationController
  before_action :set_fpga, only: [:show, :edit, :update, :destroy, :upload_bitstream]

  # GET /fpgas
  # GET /fpgas.json
  def index
    @fpgas = Fpga.all
  end

  # GET /fpgas/1
  # GET /fpgas/1.json
  def show
    # @fpgas = Fpga.all
    # @fpga = Fpga.find(params[:id])
  end

  # GET /fpgas/new
  def new
    @fpga = Fpga.new
  end

  # GET /fpgas/1/edit
  def edit
  end

  def upload_bitstream
    @fpga.update(fpga_params)
  end

  # POST /fpgas
  # POST /fpgas.json
  def create
    @fpga = Fpga.new(fpga_params)

    respond_to do |format|
      if @fpga.save
        format.html { redirect_to @fpga, notice: 'Fpga was successfully created.' }
        format.json { render :show, status: :created, location: @fpga }
      else
        format.html { render :new }
        format.json { render json: @fpga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fpgas/1
  # PATCH/PUT /fpgas/1.json
  def update
    respond_to do |format|
      if @fpga.update(fpga_params)
        format.html { redirect_to @fpga, notice: 'Fpga was successfully updated.' }
        format.json { render :show, status: :ok, location: @fpga }
      else
        format.html { render :edit }
        format.json { render json: @fpga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fpgas/1
  # DELETE /fpgas/1.json
  def destroy
    @fpga.destroy
    respond_to do |format|
      format.html { redirect_to fpgas_url, notice: 'Fpga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fpga
      @fpga = Fpga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fpga_params
      params.require(:fpga).permit(:family, :model, :name, :brief, :pin_assigments, :sevensegs, :switchs, :buttons, :leds, :bitstream)
    end
end
