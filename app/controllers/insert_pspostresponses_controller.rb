class InsertPspostresponsesController < ApplicationController
  before_action :set_insert_pspostresponse, only: [:show, :edit, :update, :destroy]

 
  def index
    @insert_pspostresponses = InsertPspostresponse.all	
  end

  def show
  end

  # GET /insert_pspostresponses/new
  def new
    @insert_pspostresponse = InsertPspostresponse.new
	@insert_psresponse = InsertPsresponse.new
  end

  # GET /insert_pspostresponses/1/edit
  def edit
  end

  
  def create
    @insert_pspostresponse = InsertPspostresponse.new(insert_pspostresponse_params)

    respond_to do |format|
      if @insert_pspostresponse.save
        format.html { redirect_to @insert_pspostresponse, notice: 'Insert pspostresponse was successfully created.' }
        format.json { render :show, status: :created, location: @insert_pspostresponse }
      else
        format.html { render :new }
        format.json { render json: @insert_pspostresponse.errors, status: :unprocessable_entity }
      end
    end
	
	
	
  end

  
  def update
    respond_to do |format|
      if @insert_pspostresponse.update(insert_pspostresponse_params)
        format.html { redirect_to @insert_pspostresponse, notice: 'Insert pspostresponse was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert_pspostresponse }
      else
        format.html { render :edit }
        format.json { render json: @insert_pspostresponse.errors, status: :unprocessable_entity }
      end
    end
	
	
	
  end

 
  def destroy
    @insert_pspostresponse.destroy
    respond_to do |format|
      format.html { redirect_to insert_pspostresponses_url, notice: 'Insert pspostresponse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insert_pspostresponse
      @insert_pspostresponse = InsertPspostresponse.find(params[:id])
    end
	
    # Never trust parameters from the scary internet, only allow the white list through.
    def insert_pspostresponse_params
      params.require(:insert_pspostresponse).permit(:insertid, :leftover, :postnote, :updatedby, :latetrucks)
    end
	
	
end
