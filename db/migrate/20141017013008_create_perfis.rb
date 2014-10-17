class CreatePerfis < ActiveRecord::Migration
  def change
    create_table :perfis do |t|
      t.string :nome_da_empresa
      t.string :razao_social
      t.string :cnpj
      t.string :telefone
      t.string :nome_do_responsavel
      t.string :telefone_do_responsavel
      t.string :email_do_responsavel
      t.string :rua
      t.integer :numero
      t.string :cep
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :complemento
      t.integer :usuario_id

      t.timestamps
    end
  end
end
