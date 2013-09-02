class ScoutsController < ApplicationController
  include ApplicationHelper
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
    if(params[:parent].empty? && params[:children].empty?)
      puts "Solo"
      req = Scout.find(params[:scout_id]).scout_requirements.find(params[:requirement_id])
      req_complete = false
      if(req.completed_date != nil)
        Scout.find(params[:scout_id]).scout_requirements.find(params[:requirement_id]).update_attributes(:completed_date => nil)
      else
        Scout.find(params[:scout_id]).scout_requirements.find(params[:requirement_id]).update_attributes(:completed_date => Date.today)
        req_complete = true
      end
    elsif(params[:parent].empty?)
      puts"Parent"
      puts params
    elsif (params[:children].empty?)
      puts"Child"
      complete_requirement(params[:requirement_id])
      req_complete = true
      parent_finished = check_parent
      if parent_finished
        parent_complete = true
        Scout.find(params[:scout_id]).scout_requirements.find(params[:parent]).update_attributes(:completed_date => Date.today)
      else
        Scout.find(params[:scout_id]).scout_requirements.find(params[:parent]).update_attributes(:completed_date => nil)
      end
    end

    respond_to do |format|
      format.json {
        render :json => {
          req_complete: req_complete,
          parent_complete: parent_complete
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
end
