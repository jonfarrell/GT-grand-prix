class GrandprixCircuitsController < ApplicationController
  before_action :set_grandprix_circuit, only: %i[ show edit update destroy ]

  # GET /grandprix_circuits or /grandprix_circuits.json
  def index
    @grandprix_circuits = GrandprixCircuit.all
  end

  # GET /grandprix_circuits/1 or /grandprix_circuits/1.json
  def show
  end

  # GET /grandprix_circuits/new
  def new
    @grandprix_circuit = GrandprixCircuit.new
  end

  # GET /grandprix_circuits/1/edit
  def edit
  end

  # POST /grandprix_circuits or /grandprix_circuits.json
  def create
    @grandprix_circuit = GrandprixCircuit.new(grandprix_circuit_params)

    respond_to do |format|
      if @grandprix_circuit.save
        format.html { redirect_to grandprix_circuit_url(@grandprix_circuit), notice: "Grandprix circuit was successfully created." }
        format.json { render :show, status: :created, location: @grandprix_circuit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grandprix_circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grandprix_circuits/1 or /grandprix_circuits/1.json
  def update
    respond_to do |format|
      if @grandprix_circuit.update(grandprix_circuit_params)
        format.html { redirect_to grandprix_circuit_url(@grandprix_circuit), notice: "Grandprix circuit was successfully updated." }
        format.json { render :show, status: :ok, location: @grandprix_circuit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grandprix_circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grandprix_circuits/1 or /grandprix_circuits/1.json
  def destroy
    @grandprix_circuit.destroy

    respond_to do |format|
      format.html { redirect_to grandprix_circuits_url, notice: "Grandprix circuit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grandprix_circuit
      @grandprix_circuit = GrandprixCircuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grandprix_circuit_params
      params.require(:grandprix_circuit).permit(:name, :description)
    end
end
