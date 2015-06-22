class InsertPubsController < ApplicationController
  before_action :set_insert_pub, only: [:show, :edit, :update, :destroy]

  # GET /insert_pubs
  # GET /insert_pubs.json
  def index
    @insert_pubs = InsertPub.all
  end

  # GET /insert_pubs/1
  # GET /insert_pubs/1.json
  def show
  end

  # GET /insert_pubs/new
  def new
    @insert_pub = InsertPub.new
  end

  # GET /insert_pubs/1/edit
  def edit
  end

  # POST /insert_pubs
  # POST /insert_pubs.json
  def create
    @insert_pub = InsertPub.new(insert_pub_params)

    respond_to do |format|
      if @insert_pub.save
        format.html { redirect_to @insert_pub, notice: 'Insert pub was successfully created.' }
        format.json { render :show, status: :created, location: @insert_pub }
      else
        format.html { render :new }
        format.json { render json: @insert_pub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insert_pubs/1
  # PATCH/PUT /insert_pubs/1.json
  def update
    respond_to do |format|
      if @insert_pub.update(insert_pub_params)
        format.html { redirect_to @insert_pub, notice: 'Insert pub was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert_pub }
      else
        format.html { render :edit }
        format.json { render json: @insert_pub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insert_pubs/1
  # DELETE /insert_pubs/1.json
  def destroy
    @insert_pub.destroy
    respond_to do |format|
      format.html { redirect_to insert_pubs_url, notice: 'Insert pub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insert_pub
      @insert_pub = InsertPub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insert_pub_params
      params.require(:insert_pub).permit(:pub_code, :pub_name, :ams_pub_code, :cci_product, :cci_zone, :cci_edition, :text_active, :page_format_id, :active, :create_by, :updated_by)
    end
end
