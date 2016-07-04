class RestaurauntsController < ApplicationController
  before_action :set_restauraunt, only: [:show, :edit, :update, :destroy]

  # GET /restauraunts
  # GET /restauraunts.json
  def index
    @restauraunts = Restauraunt.all
  end

  # GET /restauraunts/1
  # GET /restauraunts/1.json
  def show
  end

  # GET /restauraunts/new
  def new
    @restauraunt = Restauraunt.new
  end

  # GET /restauraunts/1/edit
  def edit
  end

  # POST /restauraunts
  # POST /restauraunts.json
  def create
    @restauraunt = Restauraunt.new(restauraunt_params)

    respond_to do |format|
      if @restauraunt.save
        format.html { redirect_to @restauraunt, notice: 'Restauraunt was successfully created.' }
        format.json { render :show, status: :created, location: @restauraunt }
      else
        format.html { render :new }
        format.json { render json: @restauraunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restauraunts/1
  # PATCH/PUT /restauraunts/1.json
  def update
    respond_to do |format|
      if @restauraunt.update(restauraunt_params)
        format.html { redirect_to @restauraunt, notice: 'Restauraunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @restauraunt }
      else
        format.html { render :edit }
        format.json { render json: @restauraunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restauraunts/1
  # DELETE /restauraunts/1.json
  def destroy
    @restauraunt.destroy
    respond_to do |format|
      format.html { redirect_to restauraunts_url, notice: 'Restauraunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restauraunt
      @restauraunt = Restauraunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restauraunt_params
      params.require(:restauraunt).permit(:name, :address, :phone, :website)
    end
end
