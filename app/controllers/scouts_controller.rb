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
    @scout.requirements << mb.requirements
    respond_to do |format|
      format.json {
        render :json => {
          :merit_badge => mb
        }, :status => :ok
      }
    end
  end

  def reqs
    children = params[:children].split('#')
    parent = params[:parent]
    if(parent)
      complete = true
      check_children(children)
    end
    if(children)
      complete = false
      check_parent(parent)
    end
    if(!parent && !children)
      binding.pry
      if(params[:has_multiple] != true)
        @scout = Scout.find(params[:scout_id])
        reqs = @scout.scout_requirements.where(:requirement_id => params[:requirement_id])
        if(reqs[0].completed_date == nil)
          reqs[0].update_attributes(:completed_date => Date.today)
        else
          reqs[0].update_attributes(:completed_date => nil)
        end
      end
    end

    respond_to do |format|
      format.json {
        render :json => {
          complete: complete
        } , :status => :ok
      }
    end
  end

  def set_scout
    @scout = Scout.find(params[:id])
  end

  def check_children(children)
    children.each do |child|
    end
  end

  def check_parent(parent)
    puts parent
  end
end
