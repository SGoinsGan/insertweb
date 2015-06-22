class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

 def index
 
    if params[:username].present? && params[:password].present?
	  @users = User.where('username = ?', params[:username])
	  
	  #redirect_to inserts_path
	  redirect_to inserts_path, :flash => { :username => @username, :printsitename => @printsitename, :printsitecode => @printsitecode, :id => @id}
	  
	  
	  
	else
      @users = User.limit(1)
	end	
	
	
    #@users = User.all
  end

  
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

 
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :printsitename, :printsitecode, :password)
    end
end
