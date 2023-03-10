module Api
    module V1
        class UsuariosController < ApplicationController
            def index
                usuarios = Usuario.order('created_at');
                render json: {
                    status: 'Exitosoooo',
                    message: 'Usuarios Cargados',
                    data: usuarios
                }, status: :ok
            end
            #metodos
            def show
                usuarios = Usuario.find( params[:id]);
                render json: {
                    status: 'Exitoso',
                    message: 'Usuario Cargado',
                    data: usuarios
                }, status: :ok    
            end 

            def create
                usuario = Usuario.new( usuario_params );
                if usuario.save
                    render json: {
                    status: 'Exitoso',
                    message: 'Usuario Creado',
                    data: usuario
                }, status: :ok
                else 
                    render json: {
                    status: 'Error',
                    message: 'Usuario no creado',
                    data: usuario.errors
                }, status: :unprocessable_entity
                end
            end

            private
            def usuario_params
                params.permit( :nombre, :apellido, :ciudad, :rol, :unidad)
            end
            

            def destroy
                usuarios = Usuario.find( params[:id]);
                if usuario.destroy
                    render json: {
                    status: 'Exitoso',
                    message: 'Usuario no eliminado',
                    data: usuario
                }, status: :ok
                else
                    render json: {
                        status: 'Error',
                        message: 'Usuario no creado',
                        data: usuario.errors,
                }, status: :unprocessable_entity
                end
            end

            def update
                usuarios = Usuario.find( params[:id]);
                if usuario.update_attributes
                    render json: {
                        status:'Exitoso',
                        message: 'Usuario actualizado',
                        data: usuario
                    }, status: :ok
                else
                    render json: {
                        status: 'Error',
                        message: 'Usuario no actualizado',
                        data: 
                    }, status:
                end
            end
        end        
    end
end

#http://127.0.0.1:3000/api/v1/usuarios