class ScoutsController < ApplicationController
  include ScoutHelper
  before_action :set_scout, only: [:show, :edit, :update, :destroy]

  def index
    @scouts = Scout.all
  end

  def create
    Scout.new
  end

  def new
    @scout = Scout.new(:first_name => params[:first_name], :last_name => params[:last_name], :birthdate => params[:birthday])
    @scout.advancements << Rank.all
    Rank.all.each do |rank|
      @scout.requirements << rank.requirements
    end
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
    result = get_updates
    respond_to do |format|
      format.json {
        render :json => {
          req_complete: result[:req_complete],
          parent_complete: result[:parent_complete]
          } , :status => :ok
        }
      end
  end

  def set_scout
    @scout = Scout.find(params[:id])
  end
end
