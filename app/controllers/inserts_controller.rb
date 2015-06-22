class InsertsController < ApplicationController
  before_action :set_insert, only: [:show, :edit, :update, :destroy]

  
  def index
  #params.inspect
  if params[:username].present? 
	@users = User.where('username = ?', params[:username])
  else
	@users = User.limit(1)
  end  
  
    @username = params['username']
    @printsitename = params['printsitename']
	@printsitecode = params['printsitecode']
	
	# convert strings to dates and the date format to yyyy-mm-dd
    if params[:search].present? && params[:txtFromDate].present? && params[:txtToDate].present?	  
      params[:txtFromDate] = Date.strptime(params[:txtFromDate], '%m/%d/%Y').strftime('%Y-%m-%d')
	  params[:txtToDate] = Date.strptime(params[:txtToDate], '%m/%d/%Y').strftime('%Y-%m-%d')
      #params[:txtFromDate] = Date.strptime(params[:txtFromDate], '%m/%d/%Y')
	  #params[:txtToDate] = Date.strptime(params[:txtToDate], '%m/%d/%Y')	  
    end
	
	#select inserts by pub and issue dates
    
    if params[:search].present? && params[:txtFromDate].present? && params[:txtToDate].present? 
	   @inserts = Insert.where('pubcode = ? and issuedate between ? and ? and printsiteready = ?', params[:search], params[:txtFromDate], params[:txtToDate], 'Y') 
    #if params[:search].present? && params[:issuedate1].present? && params[:issuedate2].present?
	  #@inserts = Insert.where('pubcode = ? and issuedate between ? and ?', params[:search], params[:issuedate1], params[:issuedate2])	  
    else	
      @inserts = Insert.limit(3)
    end 
	
	# Display print site name with print site code as parameter
	if params[:distributioncode].present?
	  @distributions = Distribution.where('distribution_code = ?', params[:distributioncode])
	else
      @distributions = Distribution.limit(1)
	end	
	
	if params[:psLookupId].present? && params[:preInsertId].present? 
	@insert_psresponses = InsertPsresponse.where('lookupid = ? and insertid = ?', params[:psLookupId], params[:preInsertId])
    else
      @insert_psresponses = InsertPsresponse.all
	end	
	
	if params[:condID].present?
	@insert_conditions = InsertCondition.where('id = ?', params[:condID])
	else
      @insert_conditions = InsertCondition.limit(1)
	end	
   	  
  end

  # GET /inserts/1
  # sg
  def show
    @inserts = Insert.find(params[:id])
  end

  # GET /inserts/new
  def new
    @insert = Insert.new
  end

  # GET /inserts/1/edit
  # sg
  def edit
    @inserts = Insert.find(params[:id])
  end

  # POST /inserts
  # POST /inserts.json
  def create
    @insert = Insert.new(insert_params)

    respond_to do |format|
      if @insert.save
        format.html { redirect_to @insert, notice: 'Insert was successfully created.' }
        format.json { render :show, status: :created, location: @insert }
      else
        format.html { render :new }
        format.json { render json: @insert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inserts/1
  # PATCH/PUT /inserts/1.json
  def update
    respond_to do |format|
      if @insert.update(insert_params)
        format.html { redirect_to @insert, notice: 'Insert was successfully updated.' }
        format.json { render :show, status: :ok, location: @insert }
      else
        format.html { render :edit }
        format.json { render json: @insert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inserts/1
  # DELETE /inserts/1.json
  def destroy
    @insert.destroy
    respond_to do |format|
      format.html { redirect_to inserts_url, notice: 'Insert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insert
      @insert = Insert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insert_params
      params.require(:insert).permit(:insertid, :inserttypecode, :pubcode, :positioncode, :paperstockid, :methodid, :subtypeid, :createdby, :updatedby, :adstatuscode, :adstatusfursncode, :advacct, :pressrunlonumber, :stagecode, :colorcode, :packagenumber, :issuedate, :productline, :materialdesc, :batchnumber, :width, :height, :pages, :perccircb, :adlinage, :psreceiveddate, :erop, :waitlistheld, :billedby, :eionumber, :cncldbysalesrep, :regional, :cancelledbyuser, :fursndate, :transtimefrom, :transtimeto, :transdateto, :overruns, :insertnotes, :materialinmclean, :exclusive, :schedulernotes, :transdate, :prepressworkid, :weight, :editorialspace, :projruncode, :projdblsect, :straightcollect, :sectionname, :allprintsites, :printsiteready)
    end
end
