require 'net/http'
require 'uri'

module OrdersHelper

  include Pagseguro

  # Cria um form hidden para compra de apenas um produto
  #
  # O parametro (produto) deve ser um objeto que responda ao seguintes metodos:
  #  * id (para identificar o produto)
  #  * descricao
  #  * valor
  #
  # Opcionalmente o objeto tambem pode responder a frete - nesse caso
  # um campo hidden adicional sera colocado.
  def form_para_compra(produto)

    #validar_produto produto

    result =  "<form target='pagseguro' method='post' action='https://pagseguro.uol.com.br/security/webpagamentos/webpagto.aspx'>"
    result << "<input type='hidden' name='email_cobranca' value='#{email}' />\n"

    result << "<input type='hidden' name='tipo' value='CP'/>\n"
    result << "<input type='hidden' name='moeda' value='BRL' />\n"

    i = 1
@order.line_items.each do |item|
  result << "<input type='hidden' name='item_id_#{i}' value='#{@order.number}' />\n"
  result << "<input type='hidden' name='item_descr_#{i}' value='#{item.variant.product.name}' />\n"
  result << "<input type='hidden' name='item_valor_#{i}' value='#{item.price}' />\n"
  result << "<input type='hidden' name='item_quant_#{i}' value='#{item.quantity}' />\n"
  result << "<input type='hidden' name='item_peso_#{i}' value='#{item.variant.weight.to_i}' />\n"
  i += 1
end

    result << """<input type='image' src='https://pagseguro.uol.com.br/Security/Imagens/btnfinalizaBR.jpg'
                        name='submit' alt='Pague com PagSeguro - é rápido, grátis e seguro!' />"""
    result << "</form>"
  end

end

