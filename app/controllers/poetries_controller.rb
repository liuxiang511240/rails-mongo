class PoetriesController < ApplicationController
  before_action :set_poetry, only: [:show, :edit, :update, :destroy]

  # GET /poetries
  # GET /poetries.json
  def index
    @poetries = Poetry.paginate(:per_page => 10, :page => params[:page]||1)
  end

  # GET /poetries/1
  # GET /poetries/1.json
  def show
  end

  # GET /poetries/new
  def new
    @poetry = Poetry.new
  end

  # GET /poetries/1/edit
  def edit
  end

  # POST /poetries
  # POST /poetries.json
  def create
    @poetry = Poetry.new(poetry_params)

    respond_to do |format|
      if @poetry.save
        format.html { redirect_to @poetry, notice: 'Poetry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @poetry }
      else
        format.html { render action: 'new' }
        format.json { render json: @poetry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poetries/1
  # PATCH/PUT /poetries/1.json
  def update
    respond_to do |format|
      if @poetry.update_attributes(poetry_params)
        format.html { redirect_to @poetry, notice: 'Poetry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @poetry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poetries/1
  # DELETE /poetries/1.json
  def destroy
    @poetry.destroy
    respond_to do |format|
      format.html { redirect_to poetries_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_poetry
    @poetry = Poetry.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def poetry_params
    params[:poetry].merge!(:created_at => (@poetry.blank? or @poetry.created_at.blank?) ? Time.now : @poetry.created_at)
  end
end
