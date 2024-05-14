class TipoContatosController < ApplicationController
  def create
    @tipo_contato = TipoContato.new(tipo_contato_params)

    if @tipo_contato.save
      flash[:success] = "O TipoContato, '#{@tipo_contato.descricao}' foi criado com sucesso"
    else
      flash[:error] = "Tente criar um TIPO DE CONTATO com uma descrição diferente de: '#{@tipo_contato.descricao}'."
    end
    redirect_to new_contato_path
  end

  private

  def tipo_contato_params
    params.require(:tipo_contato).permit(:descricao)
  end
end
