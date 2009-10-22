# Modulo de opcoes do plugin
#
# Edite esses valores
module Pagseguro

  # Define a url de retorno da sua aplicacao
  #
  # Essa url tambem deve ser registrada em: https://pagseguro.uol.com.br/Security/ConfiguracoesWeb/RetornoAutomatico.aspx
  #
  # Nessa, acao, voce deve validar o pedido
  def url_retorno
    'http://localhost:3000/'
  end

  # Define o token da sua aplicacao
  # que voce gera em: https://pagseguro.uol.com.br/Security/ConfiguracoesWeb/RetornoAutomatico.aspx
  def token
    'seu_token_do_pagseguro'
  end

  # O email da sua loja (para ela ser identificada pelo PagSeguro)
  def email
    'octagonotecnologia@gmail.com'
  end
end

