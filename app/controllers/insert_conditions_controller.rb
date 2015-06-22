class InsertConditionsController < ApplicationController
  before_action :set_insert_condition, only: [:show, :edit, :update, :destroy]

  # GET /insert_conditions
  # GET /insert_conditions.json
  def index
    @insert_conditions = InsertCondition.all
  end

  # GET /insert_conditions/1
  # GET /insert_conditions/1.json
  def show
  end

  # GET /insert_conditions/new
  def new
    @insert_condition = InsertCondition.new
  end

  # GET /insert_conditions/1/edit
  def edit
  end

  # POST /insert_conditions
  # POST /insert_conditions.json
  def create
    @insert_condition = InsertCondition.new(insert_condition_params)

    respond_to do |format|
      if @insert_condition.save
        format.html { redirect_to @insert_condition, notice: 'Insert condition was successfully created.' }
        format.json { render :show, status: :created, location: @insert_condition }
      else
        format.html { render :new }
        format.json { render json: @insert_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insert_conditions/1
  # PATCH/PUT /insert_conditions/1.json
  def update
    respond_to do |format|
      if @insert_condition.update(insert_condition_params)
        format.html { redirect_to @insert_condition, notice: 'Insert condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert_condition }
      else
        format.html { render :edit }
        format.json { render json: @insert_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insert_conditions/1
  # DELETE /insert_conditions/1.json
  def destroy
    @insert_condition.destroy
    respond_to do |format|
      format.html { redirect_to insert_conditions_url, notice: 'Insert condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insert_condition
      @insert_condition = InsertCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insert_condition_params
      params.require(:insert_condition).permit(:conditionname, :responsecode)
    end
end
