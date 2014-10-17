require 'test_helper'

class PerfisControllerTest < ActionController::TestCase
  setup do
    @perfil = perfis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfil" do
    assert_difference('Perfil.count') do
      post :create, perfil: { bairro: @perfil.bairro, cep: @perfil.cep, cidade: @perfil.cidade, cnpj: @perfil.cnpj, complemento: @perfil.complemento, email_do_responsavel: @perfil.email_do_responsavel, estado: @perfil.estado, nome_da_empresa: @perfil.nome_da_empresa, nome_do_responsavel: @perfil.nome_do_responsavel, numero: @perfil.numero, razao_social: @perfil.razao_social, rua: @perfil.rua, telefone: @perfil.telefone, telefone_do_responsavel: @perfil.telefone_do_responsavel, usuario_id: @perfil.usuario_id }
    end

    assert_redirected_to perfil_path(assigns(:perfil))
  end

  test "should show perfil" do
    get :show, id: @perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfil
    assert_response :success
  end

  test "should update perfil" do
    patch :update, id: @perfil, perfil: { bairro: @perfil.bairro, cep: @perfil.cep, cidade: @perfil.cidade, cnpj: @perfil.cnpj, complemento: @perfil.complemento, email_do_responsavel: @perfil.email_do_responsavel, estado: @perfil.estado, nome_da_empresa: @perfil.nome_da_empresa, nome_do_responsavel: @perfil.nome_do_responsavel, numero: @perfil.numero, razao_social: @perfil.razao_social, rua: @perfil.rua, telefone: @perfil.telefone, telefone_do_responsavel: @perfil.telefone_do_responsavel, usuario_id: @perfil.usuario_id }
    assert_redirected_to perfil_path(assigns(:perfil))
  end

  test "should destroy perfil" do
    assert_difference('Perfil.count', -1) do
      delete :destroy, id: @perfil
    end

    assert_redirected_to perfis_path
  end
end
