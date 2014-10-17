class PerfisController < ApplicationController
  before_action :set_perfil, only: [:show, :edit, :update, :destroy]

  # GET /perfis
  # GET /perfis.json
  def index
    @perfis = Perfil.all
  end

  # GET /perfis/1
  # GET /perfis/1.json
  def show
  end

  # GET /perfis/new
  def new
    @perfil = Perfil.new
  end

  # GET /perfis/1/edit
  def edit
  end

  # POST /perfis
  # POST /perfis.json
  def create
    @perfil = Perfil.new(perfil_params)

    respond_to do |format|
      if @perfil.save
        format.html { redirect_to @perfil, notice: 'Perfil was successfully created.' }
        format.json { render action: 'show', status: :created, location: @perfil }
      else
        format.html { render action: 'new' }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfis/1
  # PATCH/PUT /perfis/1.json
  def update
    respond_to do |format|
      if @perfil.update(perfil_params)
        format.html { redirect_to @perfil, notice: 'Perfil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfis/1
  # DELETE /perfis/1.json
  def destroy
    @perfil.destroy
    respond_to do |format|
      format.html { redirect_to perfis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfil
      @perfil = Perfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfil_params
      params.require(:perfil).permit(:nome_da_empresa, :razao_social, :cnpj, :telefone, :nome_do_responsavel, :telefone_do_responsavel, :email_do_responsavel, :rua, :numero, :cep, :bairro, :cidade, :estado, :complemento, :usuario_id)
    end
end
