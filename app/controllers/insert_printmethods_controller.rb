class InsertPrintmethodsController < ApplicationController
  before_action :set_insert_printmethod, only: [:show, :edit, :update, :destroy]

  # GET /insert_printmethods
  # GET /insert_printmethods.json
  def index
    @insert_printmethods = InsertPrintmethod.all
  end

  # GET /insert_printmethods/1
  # GET /insert_printmethods/1.json
  def show
  end

  # GET /insert_printmethods/new
  def new
    @insert_printmethod = InsertPrintmethod.new
  end

  # GET /insert_printmethods/1/edit
  def edit
  end

  # POST /insert_printmethods
  # POST /insert_printmethods.json
  def create
    @insert_printmethod = InsertPrintmethod.new(insert_printmethod_params)

    respond_to do |format|
      if @insert_printmethod.save
        format.html { redirect_to @insert_printmethod, notice: 'Insert printmethod was successfully created.' }
        format.json { render :show, status: :created, location: @insert_printmethod }
      else
        format.html { render :new }
        format.json { render json: @insert_printmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insert_printmethods/1
  # PATCH/PUT /insert_printmethods/1.json
  def update
    respond_to do |format|
      if @insert_printmethod.update(insert_printmethod_params)
        format.html { redirect_to @insert_printmethod, notice: 'Insert printmethod was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert_printmethod }
      else
        format.html { render :edit }
        format.json { render json: @insert_printmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insert_printmethods/1
  # DELETE /insert_printmethods/1.json
  def destroy
    @insert_printmethod.destroy
    respond_to do |format|
      format.html { redirect_to insert_printmethods_url, notice: 'Insert printmethod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insert_printmethod
      @insert_printmethod = InsertPrintmethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insert_printmethod_params
      params.require(:insert_printmethod).permit(:methodname)
    end
end
