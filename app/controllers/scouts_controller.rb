class ScoutsController < ApplicationController
  before_action :set_scout, only: [:show, :edit, :update, :destroy]

  # GET /scouts
  # GET /scouts.json
  def index
    @scouts = Scout.all
  end

  def create
  	Scout.new
  end

  def new
  	@scout = Scout.new(:first_name => params[:first_name], :last_name => params[:last_name], :birthdate => params[:birthday])
      @scout.advancements << Rank.all
  	 respond_to do |format|
  	 	if @scout.save
          format.html { redirect_to @scout, notice: 'Scout was successfully created.' }
          format.json { render json: @scout, :status => :ok}
        else
          format.html { render action: 'new' }
          format.json { render json: @scout.errors, status: :unprocessable_entity }
        end
    end
  end

  def edit
    @scout = set_scout
    respond_to do |format|
      format.html { render 'edit' }
      format.json {
         render :json => {
            :scout => @scout,
            :merit_badges => @scout.merit_badges
         } , :status => :ok
      }
    end
  end

  def destroy
    @scout.destroy
    respond_to do |format|
      format.html { redirect_to scouts_path }
      format.json { head :no_content }
    end
  end

  def show
    mb = MeritBadge.find_by_name(params[:badge])
    @scout.advancements << mb
    respond_to do |format|
      format.json {
        render :json => {
          :merit_badge => mb
        }, :status => :ok
      }
    end
  end

  def set_scout
    @scout = Scout.find(params[:id])
  end
end
