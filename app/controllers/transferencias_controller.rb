class TransferenciasController < ApplicationController
    def index
        @transferencias = Transferencium.all
        @cuentas = Account.all
        @usuarios = Usuario.all
    end 
    def new
        @transferencia = Transferencium.new
        @usuario_seleccionado = Usuario.find(params[:id])  
    end
    def show
        @transferencia = Transferencium.find(params[:id])
        @usuario = Usuario.find(params[:id])
    end
    def create
        cumplido = false
        destinatario = Usuario.find(params[:id])
        monto = params.require(:monto).to_i
        account_id = params.require(:account_id).to_i
        hash = {monto: monto, usuario_id: params[:id], account_id: account_id}
        cuenta_destino = destinatario.accounts.find(account_id)
        cuentas_usuario = current_usuario.accounts
        for cuenta in cuentas_usuario
            if cuenta.monto >= monto
               @transferencia = current_usuario.transferencium.create(hash)
                if @transferencia.save
                    perdida = cuenta.monto - monto
                    ganancia = cuenta_destino.monto + monto
                    cuenta.update(monto: perdida)
                    cuenta_destino.update(monto: ganancia)
                    cumplido = true
                    if cumplido
                        redirect_to transferencias_index_path, notice: 'Se transfirió con éxito'
                        break
                    end
               end
            end
        end
        if cumplido == false
            redirect_to transferencias_new_path, notice: 'No posees ese monto, vuelve a intentar'
        end

    end    

    
end
