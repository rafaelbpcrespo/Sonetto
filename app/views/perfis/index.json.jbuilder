json.array!(@perfis) do |perfil|
  json.extract! perfil, :id, :nome_da_empresa, :razao_social, :cnpj, :telefone, :nome_do_responsavel, :telefone_do_responsavel, :email_do_responsavel, :rua, :numero, :cep, :bairro, :cidade, :estado, :complemento, :usuario_id
  json.url perfil_url(perfil, format: :json)
end
