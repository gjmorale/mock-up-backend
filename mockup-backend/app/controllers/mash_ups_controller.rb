class MashUpsController < ApplicationController
  before_action :set_mash_up, only: [:show, :edit, :update, :destroy]

  # GET /mash_ups
  # GET /mash_ups.json
  def index
    @mash_ups = MashUp.all
  end

  # GET /mash_ups/1
  # GET /mash_ups/1.json
  def show
  end

  # GET /mash_ups/new
  def new
    @mash_up = MashUp.new
  end

  # GET /mash_ups/1/edit
  def edit
  end

  # POST /mash_ups
  # POST /mash_ups.json
  def create
    @mash_up = MashUp.new(mash_up_params)

    respond_to do |format|
      if @mash_up.save
        format.html { redirect_to @mash_up, notice: 'Mash up was successfully created.' }
        format.json { render :show, status: :created, location: @mash_up }
      else
        format.html { render :new }
        format.json { render json: @mash_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mash_ups/1
  # PATCH/PUT /mash_ups/1.json
  def update
    respond_to do |format|
      if @mash_up.update(mash_up_params)
        format.html { redirect_to @mash_up, notice: 'Mash up was successfully updated.' }
        format.json { render :show, status: :ok, location: @mash_up }
      else
        format.html { render :edit }
        format.json { render json: @mash_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mash_ups/1
  # DELETE /mash_ups/1.json
  def destroy
    @mash_up.destroy
    respond_to do |format|
      format.html { redirect_to mash_ups_url, notice: 'Mash up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mash_up
      @mash_up = MashUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mash_up_params
      params.require(:mash_up).permit(:name)
    end
end
