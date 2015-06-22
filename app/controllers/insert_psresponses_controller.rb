class InsertPsresponsesController < ApplicationController
  before_action :set_insert_psresponse, only: [:show, :edit, :update, :destroy]

  # GET /insert_psresponses
  # GET /insert_psresponses.json
  def index
  
  #render text: params.inspect
  # url parameters
  @Inserttype = params['Inserttype']
  @InsertID = params['InsertID']
  @IssueDate = params['IssueDate']
  @Printsite = params['Printsite']
  @Advertiser = params['Advertiser']
  @condID = params['condName']
  
  if params[:InsertID].present? 
	  @insert_psresponses = InsertPsresponse.where('insertid = ?', params[:InsertID])
    else
      @insert_psresponses = InsertPsresponse.all
	end	
	
  if params[:InsertID].present? 
	@insert_pspostresponses = InsertPspostresponse.where('insertid = ?', params[:InsertID])
  else
    @insert_pspostresponses = InsertPspostresponse.limit(1)
  end	
  
if params[:condName].present?
	@insert_conditions = InsertCondition.where('conditionname = ?', params[:condName])
	else
      @insert_conditions = InsertCondition.limit(1)
	end	
	
	
  
  #@insert_psresponses = InsertPsresponse.all 
  
  end

  # GET /insert_psresponses/1
  # GET /insert_psresponses/1.json
  
  def InsertUpdatePre
    #Profile.update_all(["is_active = ?, name = ?, geo_lat = ?, geo_long = ?, radius = ?, search_option = ?", 1, params[:profile_name],nil, nil, nil,'st'])
	#insert_psresponses.update_all([  ])
  end
  
  def InsertUpdatePost
    #Profile.update_all(["is_active = ?, name = ?, geo_lat = ?, geo_long = ?, radius = ?, search_option = ?", 1, params[:profile_name],nil, nil, nil,'st'])
	#insert_psresponses.update_all([  ])
  end
  
  def show
  end

  # GET /insert_psresponses/new
  def new
    @insert_psresponse = InsertPsresponse.new
  end

  # GET /insert_psresponses/1/edit
  def edit
     
  end

  # POST /insert_psresponses
  # POST /insert_psresponses.json
  def create
  
    #Profile.update_all(["is_active = ?, name = ?, geo_lat = ?, geo_long = ?, radius = ?, search_option = ?", 1, params[:profile_name],nil, nil, nil,'st'])
	
	#@insert_psresponse = InsertPsresponse.find_by(id: 2)	
	#@insert_psresponse.update(["lookupid = ?, insertid = ?,receiveddate = ?,conditionid = ?,quantityrec = ?,receivednote = ?,receivedby = ?,updatedby = ?", 8, 722573, 2015-04-07, 1, 130, 'Some notes1', 'Betty Bara1','aoinsert'])
	    
    #insert_psresponse.where(:insertid => '722573').update(:lookupid => 8, :insertid => '722573', :receiveddate => 2015-04-07, :conditionid => 2, :quantityrec => 130, :receivednote => 'Some notes1', :receivedby => 'Betty Bara1', :updatedby => 'aoinsert')
    
   #insert_psresponse.update(2, :quantityrec => 130, :receivednote => 'Some notes1')
   #@insert_psresponse = InsertPsresponse.find_by(quantityrec: 126)
   #@insert_psresponse.update(quantityrec: 130)
  
    #@insert_psresponse = InsertPsresponse.new(insert_psresponse_params)

    respond_to do |format|
      if @insert_psresponse.update(insert_psresponse_params)
        format.html { redirect_to @insert_psresponse, notice: 'Insert psresponse was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert_psresponse }
      else
        format.html { render :edit }
        format.json { render json: @insert_psresponse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insert_psresponses/1
  # PATCH/PUT /insert_psresponses/1.json
  def update
    respond_to do |format|
      if @insert_psresponse.update(insert_psresponse_params)
        format.html { redirect_to @insert_psresponse, notice: 'Insert psresponse was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert_psresponse }
      else
        format.html { render :edit }
        format.json { render json: @insert_psresponse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insert_psresponses/1
  # DELETE /insert_psresponses/1.json
  def destroy
    @insert_psresponse.destroy
    respond_to do |format|
      format.html { redirect_to insert_psresponses_url, notice: 'Insert psresponse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insert_psresponse
      @insert_psresponse = InsertPsresponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insert_psresponse_params
      params.require(:insert_psresponse).permit(:lookupid, :insertid, :receiveddate, :conditionid, :quantityrec, :receivednote, :receivedby, :updatedby)
    end
end
