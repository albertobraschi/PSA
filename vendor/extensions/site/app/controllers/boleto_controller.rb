require 'brcobranca'

class BoletoController < ApplicationController

  def bb
    @order = Order.find_by_number(params[:boletoNumero])
    @valid_attributes = {
      :dias_vencimento => 3,
      :valor => @order.item_total.to_f,
      :cedente => "Coloque a Razão Social da sua empresa aqui",
      :documento_cedente => "12345678912",
      :sacado => "#{@order.bill_address.firstname} #{@order.bill_address.lastname}",
      :sacado_documento => "Não informado",
      :agencia => "4042",
      :conta_corrente => "61900",
      :convenio => 12387989,
      :numero_documento => "777700168"
    }

    boleto_novo = BancoBrasil.new(@valid_attributes)
    send_data(boleto_novo.modelo_generico(:tipo => 'pdf'), :filename => "#{params[:boletoNumero]}.pdf", :disposition => "inline")
  end

  def hsbc
    @order = Order.find_by_number(params[:boletoNumero])
    @valid_attributes = {
      :dias_vencimento => 3,
      :valor => @order.item_total.to_f,
      :cedente => "Coloque a Razão Social da sua empresa aqui",
      :documento_cedente => "12345678912",
      :sacado => "#{@order.bill_address.firstname} #{@order.bill_address.lastname}",
      :sacado_documento => "Não informado",
      :agencia => "4042",
      :conta_corrente => "61900",
      :convenio => 12387989,
      :numero_documento => "777700168"
    }

    boleto_novo = BancoHsbc.new(@valid_attributes)
    send_data(boleto_novo.modelo_generico(:tipo => 'pdf'), :filename => "#{params[:boletoNumero]}.pdf")
  end
end

