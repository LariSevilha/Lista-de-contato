class FormulariosController < ApplicationController
  before_action :set_formulario, only: %i[ show edit update destroy ]

  # GET /formularios or /formularios.json
  def index
    @formularios = Formulario.page(params[:page]).per(4)
   end

  # GET /formularios/1 or /formularios/1.json
  def show
    @form = Formulario.find(params[:id])

  end

  # GET /formularios/new
  def new
    @formulario = Formulario.new
  end

  # GET /formularios/1/edit
  def edit
  end

  # POST /formularios or /formularios.json
  def create
    @formulario = Formulario.new(formulario_params)

    respond_to do |format|
      if @formulario.save
        format.html { redirect_to formulario_url(@formulario), notice: "Contato criado com sucesso!" }
        format.json { render :show, status: :created, location: @formulario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formularios/1 or /formularios/1.json
  def update
    respond_to do |format|
      if @formulario.update(formulario_params)
        format.html { redirect_to formulario_url(@formulario), notice: "Contato atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @formulario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1 or /formularios/1.json
  def destroy
    @formulario.destroy

    respond_to do |format|
      format.html { redirect_to formularios_url, notice: "Contato excluido com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario
      @formulario = Formulario.find(params[:id])
 
    end

    # Only allow a list of trusted parameters through.
    def formulario_params
      params.require(:formulario).permit(:name, :email, :phone, :cell, :icon, :company)
    end
end

