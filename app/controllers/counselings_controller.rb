class CounselingsController < ApplicationController
  before_action :set_counseling, only: %i[ show edit update destroy ]

  # GET /counselings or /counselings.json
  def index
    @counselings = Counseling.all
  end

  # GET /counselings/1 or /counselings/1.json
  def show
  end

  # GET /counselings/new
  def new
    @counseling = Counseling.new
  end

  # GET /counselings/1/edit
  def edit
  end

  # POST /counselings or /counselings.json
  def create
    @counseling = Counseling.new(counseling_params)

    respond_to do |format|
      if @counseling.save
        format.html { redirect_to @counseling, notice: "Counseling was successfully created." }
        format.json { render :show, status: :created, location: @counseling }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @counseling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counselings/1 or /counselings/1.json
  def update
    respond_to do |format|
      if @counseling.update(counseling_params)
        format.html { redirect_to @counseling, notice: "Counseling was successfully updated." }
        format.json { render :show, status: :ok, location: @counseling }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @counseling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counselings/1 or /counselings/1.json
  def destroy
    @counseling.destroy
    respond_to do |format|
      format.html { redirect_to counselings_url, notice: "Counseling was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counseling
      @counseling = Counseling.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def counseling_params
      params.require(:counseling).permit(:name, :attending, :reason, :user_id, :meeting_id)
    end
end
