class GrandprixesController < ApplicationController
  before_action :set_grandprix, only: [:show]
  before_action :set_my_grandprix, only: [:edit, :update, :destroy]

  # GET /grandprixes or /grandprixes.json
  def index
    @grandprixes = Grandprix.all
  end

  def set_my_grandprix
    @grandprix = current_user.grandprixes.find(params[:id])
  end

  # GET /grandprixes/1 or /grandprixes/1.json
  def show
  end

  # GET /grandprixes/new
  def new
    @grandprix = Grandprix.new
  end

  # GET /grandprixes/1/edit
  def edit
  end

  # POST /grandprixes or /grandprixes.json
  def create
    @grandprix = current_user.grandprixes.build(grandprix_params)

    respond_to do |format|
      if @grandprix.save
        format.html { redirect_to grandprix_url(@grandprix), notice: "Grandprix was successfully created." }
        format.json { render :show, status: :created, location: @grandprix }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grandprix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grandprixes/1 or /grandprixes/1.json
  def update
    respond_to do |format|
      if @grandprix.update(grandprix_params)
        format.html { redirect_to grandprix_url(@grandprix), notice: "Grandprix was successfully updated." }
        format.json { render :show, status: :ok, location: @grandprix }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grandprix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grandprixes/1 or /grandprixes/1.json
  def destroy
    @grandprix.destroy

    respond_to do |format|
      format.html { redirect_to grandprixes_url, notice: "Grandprix was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grandprix
      @grandprix = Grandprix.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grandprix_params
      params.require(:grandprix).permit(:name, :description, :id)
    end
end
