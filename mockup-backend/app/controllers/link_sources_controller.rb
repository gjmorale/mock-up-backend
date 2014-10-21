class LinkSourcesController < ApplicationController
  before_action :set_link_source, only: [:show, :edit, :update, :destroy]

  # GET /link_sources
  # GET /link_sources.json
  def index
    @link_sources = LinkSource.all
  end

  # GET /link_sources/1
  # GET /link_sources/1.json
  def show
  end

  # GET /link_sources/new
  def new
    @link_source = LinkSource.new
  end

  # GET /link_sources/1/edit
  def edit
  end

  # POST /link_sources
  # POST /link_sources.json
  def create
    @link_source = LinkSource.new(link_source_params)

    respond_to do |format|
      if @link_source.save
        format.html { redirect_to @link_source, notice: 'Link source was successfully created.' }
        format.json { render :show, status: :created, location: @link_source }
      else
        format.html { render :new }
        format.json { render json: @link_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /link_sources/1
  # PATCH/PUT /link_sources/1.json
  def update
    respond_to do |format|
      if @link_source.update(link_source_params)
        format.html { redirect_to @link_source, notice: 'Link source was successfully updated.' }
        format.json { render :show, status: :ok, location: @link_source }
      else
        format.html { render :edit }
        format.json { render json: @link_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_sources/1
  # DELETE /link_sources/1.json
  def destroy
    @link_source.destroy
    respond_to do |format|
      format.html { redirect_to link_sources_url, notice: 'Link source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_source
      @link_source = LinkSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_source_params
      params.require(:link_source).permit(:name, :picture)
    end
end
