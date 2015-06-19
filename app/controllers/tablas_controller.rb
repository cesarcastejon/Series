class TablasController < ApplicationController
  before_action :set_tabla, only: [:show, :edit, :update, :destroy]

  # GET /tablas
  # GET /tablas.json
  def index
    @tablas = Tabla.all
  end

  # GET /tablas/1
  # GET /tablas/1.json
  def show
  end

  # GET /tablas/new
  def new
    @tabla = Tabla.new
  end

  # GET /tablas/1/edit
  def edit
  end

  # POST /tablas
  # POST /tablas.json
  def create
    @tabla = Tabla.new(tabla_params)

    respond_to do |format|
      if @tabla.save
        format.html { redirect_to @tabla, notice: 'Tabla was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tabla }
      else
        format.html { render action: 'new' }
        format.json { render json: @tabla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablas/1
  # PATCH/PUT /tablas/1.json
  def update
    respond_to do |format|
      if @tabla.update(tabla_params)
        format.html { redirect_to @tabla, notice: 'Tabla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tabla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablas/1
  # DELETE /tablas/1.json
  def destroy
    @tabla.destroy
    respond_to do |format|
      format.html { redirect_to tablas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabla
      @tabla = Tabla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tabla_params
      params.require(:tabla).permit(:titulo, :categoria)
    end
end
