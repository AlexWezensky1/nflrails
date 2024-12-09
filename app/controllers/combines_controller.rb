class CombinesController < ApplicationController
  before_action :set_combine, only: %i[ show edit update destroy ]

  # GET /combines or /combines.json
  def index
    @combines = Combine.all
    @q = Combine.ransack(params[:q])
    @combines = @q.result(distinct: true)
  end

  require 'csv'    
  csv_text = File.read("tmp/combine.csv")
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Combine.create!(row.to_hash)
  end 

  # GET /combines/1 or /combines/1.json
  def show
  end

  # GET /combines/new
  def new
    @combine = Combine.new
  end

  # GET /combines/1/edit
  def edit
  end

  # POST /combines or /combines.json
  def create
    @combine = Combine.new(combine_params)

    respond_to do |format|
      if @combine.save
        format.html { redirect_to @combine, notice: "Combine was successfully created." }
        format.json { render :show, status: :created, location: @combine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @combine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combines/1 or /combines/1.json
  def update
    respond_to do |format|
      if @combine.update(combine_params)
        format.html { redirect_to @combine, notice: "Combine was successfully updated." }
        format.json { render :show, status: :ok, location: @combine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @combine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combines/1 or /combines/1.json
  def destroy
    @combine.destroy!

    respond_to do |format|
      format.html { redirect_to combines_path, status: :see_other, notice: "Combine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combine
      @combine = Combine.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def combine_params
      params.expect(combine: [ :season, :draft_year, :draft_team, :draft_round, :draft_ovr, :pfr_id, :cfb_id, :player_name, :pos, :school, :ht, :wt, :forty, :bench, :vertical, :broad_jump, :cone, :shuttle ])
    end
end
