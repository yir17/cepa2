class MixturesController < ApplicationController
  before_action :set_mixture, only: %i[ show edit update destroy ]

  # GET /mixtures or /mixtures.json
  def index
    @mixtures = Mixture.all
  end

  # GET /mixtures/1 or /mixtures/1.json
  def show
  end

  # GET /mixtures/new
  def new
    @mixture = Mixture.new
  end

  # GET /mixtures/1/edit
  def edit
  end

  # POST /mixtures or /mixtures.json
  def create
    @mixture = Mixture.new(mixture_params)

    respond_to do |format|
      if @mixture.save
        format.html { redirect_to @mixture, notice: "Mixture was successfully created." }
        format.json { render :show, status: :created, location: @mixture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mixtures/1 or /mixtures/1.json
  def update
    respond_to do |format|
      if @mixture.update(mixture_params)
        format.html { redirect_to @mixture, notice: "Mixture was successfully updated." }
        format.json { render :show, status: :ok, location: @mixture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mixtures/1 or /mixtures/1.json
  def destroy
    @mixture.destroy
    respond_to do |format|
      format.html { redirect_to mixtures_url, notice: "Mixture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mixture
      @mixture = Mixture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mixture_params
      params.require(:mixture).permit(:percentage, :wine_id, :strain_id)
    end
end
