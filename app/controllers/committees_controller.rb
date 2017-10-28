class CommitteesController < ApplicationController
  before_action :set_committee, only: [:show, :edit, :update, :destroy]

  # GET /committees
  # GET /committees.json
  def index
    @committees = Committees.all
  end

  # GET /committees/1
  # GET /committees/1.json
  def show
  end

  # GET /committees/new
  def new
    @committee = Committees.new
  end

  # GET /committees/1/edit
  def edit
  end

  # POST /committees
  # POST /committees.json
  def create
    @committee = Committees.new(committee_params)

    respond_to do |format|
      if @committee.save
        format.html { redirect_to @committee, notice: 'Committees was successfully created.' }
        format.json { render :show, status: :created, location: @committee }
      else
        format.html { render :new }
        format.json { render json: @committee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /committees/1
  # PATCH/PUT /committees/1.json
  def update
    respond_to do |format|
      if @committee.update(committee_params)
        format.html { redirect_to @committee, notice: 'Committees was successfully updated.' }
        format.json { render :show, status: :ok, location: @committee }
      else
        format.html { render :edit }
        format.json { render json: @committee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /committees/1
  # DELETE /committees/1.json
  def destroy
    @committee.destroy
    respond_to do |format|
      format.html { redirect_to committees_index_url, notice: 'Committees was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_committee
      @committee = Committees.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def committee_params
      params.require(:committee).permit(:propublica_id, :name, :chamber, :url)
    end
end
