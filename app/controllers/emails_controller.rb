class EmailsController < ApplicationController
  before_filter :load_experiment
  before_filter :authenticate_user!
  # GET /emails
  # GET /emails.json
  def index
    @emails = @experiment.emails.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emails }
    end
  end

  # GET /emails/1
  # GET /emails/1.json
  def show
    @email = @experiment.emails.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email }
    end
  end

  # GET /emails/new
  # GET /emails/new.json
  def new
    @email = @experiment.emails.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email }
    end
  end

  # GET /emails/1/edit
  def edit
    @email = @experiment.emails.find(params[:id])
  end

  # POST /emails
  # POST /emails.json
  def create
    @email = @experiment.emails.new(params[:email])

    respond_to do |format|
      if @email.save
        format.html { redirect_to @experiment, notice: 'Email was successfully created.' }
        format.json { render json: @email, status: :created, location: @email }
      else
        format.html { render action: "new" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emails/1
  # PUT /emails/1.json
  def update
    @email = @experiment.emails.find(params[:id])

    respond_to do |format|
      if @email.update_attributes(params[:email])
        format.html { redirect_to @experiment, notice: 'Email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email = @experiment.emails.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to experiment_emails_url }
      format.json { head :no_content }
    end
  end

  private
  def load_experiment
    @experiment = Experiment.find(params[:experiment_id])
  end
end
