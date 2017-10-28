class AmendmentsController < ApplicationController
  before_action :set_amendment, only: [:show, :edit, :update, :destroy]

  # GET /amendments
  # GET /amendments.json
  def index
    @amendments = Amendment.all
  end

  # GET /amendments/1
  # GET /amendments/1.json
  def show
  end

  # GET /amendments/new
  def new
    @amendment = Amendment.new
  end

  # GET /amendments/1/edit
  def edit
  end

  # POST /amendments
  # POST /amendments.json
  def create
    @amendment = Amendment.new(amendment_params)

    respond_to do |format|
      if @amendment.save
        format.html { redirect_to @amendment, notice: 'Amendment was successfully created.' }
        format.json { render :show, status: :created, location: @amendment }
      else
        format.html { render :new }
        format.json { render json: @amendment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amendments/1
  # PATCH/PUT /amendments/1.json
  def update
    respond_to do |format|
      if @amendment.update(amendment_params)
        format.html { redirect_to @amendment, notice: 'Amendment was successfully updated.' }
        format.json { render :show, status: :ok, location: @amendment }
      else
        format.html { render :edit }
        format.json { render json: @amendment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amendments/1
  # DELETE /amendments/1.json
  def destroy
    @amendment.destroy
    respond_to do |format|
      format.html { redirect_to amendments_url, notice: 'Amendment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amendment
      @amendment = Amendment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amendment_params
      params.require(:amendment).permit(:sponsor_title)
    end
end
