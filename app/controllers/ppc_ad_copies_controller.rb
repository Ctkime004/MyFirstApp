class PpcAdCopiesController < ApplicationController
  before_filter :load_experiment
  before_filter :authenticate_user!
  # GET /ppc_ad_copies
  # GET /ppc_ad_copies.json
  def index
    @ppc_ad_copies = @experiment.ppc_ad_copies.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ppc_ad_copies }
    end
  end

  # GET /ppc_ad_copies/1
  # GET /ppc_ad_copies/1.json
  def show
    @ppc_ad_copy = @experiment.ppc_ad_copies.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ppc_ad_copy }
    end
  end

  # GET /ppc_ad_copies/new
  # GET /ppc_ad_copies/new.json
  def new
    @ppc_ad_copy = @experiment.ppc_ad_copies.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ppc_ad_copy }
    end
  end

  # GET /ppc_ad_copies/1/edit
  def edit
    @ppc_ad_copy = @experiment.ppc_ad_copies.find(params[:id])
  end

  # POST /ppc_ad_copies
  # POST /ppc_ad_copies.json
  def create
    @ppc_ad_copy = @experiment.ppc_ad_copies.new(params[:ppc_ad_copy])

    respond_to do |format|
      if @ppc_ad_copy.save
        format.html { redirect_to @experiment, notice: 'Ppc ad copy was successfully created.' }
        format.json { render json: @ppc_ad_copy, status: :created, location: @ppc_ad_copy }
      else
        format.html { render action: "new" }
        format.json { render json: @ppc_ad_copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ppc_ad_copies/1
  # PUT /ppc_ad_copies/1.json
  def update
    @ppc_ad_copy = @experiment.ppc_ad_copies.find(params[:id])

    respond_to do |format|
      if @ppc_ad_copy.update_attributes(params[:ppc_ad_copy])
        format.html { redirect_to @experiment, notice: 'Ppc ad copy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ppc_ad_copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ppc_ad_copies/1
  # DELETE /ppc_ad_copies/1.json
  def destroy
    @ppc_ad_copy = @experiment.ppc_ad_copies.find(params[:id])
    @ppc_ad_copy.destroy

    respond_to do |format|
      format.html { redirect_to experiment_ppc_ad_copies_url }
      format.json { head :no_content }
    end
  end

  private
  def load_experiment
    @experiment = Experiment.find(params[:experiment_id])
  end
end
