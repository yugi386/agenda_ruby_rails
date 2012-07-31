class FriendsController < ApplicationController

	# Página inicial
	def index
		@friends = Friend.all		# Lista todos os registros...
	end

	# Novo Registro
	def new
		@friend = Friend.new
		respond_to do |format|
			format.html # new.html.erb
		end
	end

	# Criando Novo Registro
	def create
		@friend = Friend.new(params[:friend])
		respond_to do |format|
			if @friend.save
				format.html {redirect_to(@friend)}
			else
				format.html {render :action => "new"}
			end	
		end
	end

	# Mostrando o registro do amigo
	def show
		@friend = Friend.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
		end
	end
	
	# Método para carregar formulário de edição
	def edit
		@friend = Friend.find(params[:id])
	end	

	# Atualizando um registro
	def update
		@friend = Friend.find(params[:id])

		respond_to do |format|
			if @friend.update_attributes(params[:friend])
				format.html {redirect_to(@friend)}
			else
				format.html {render :action => "edit"}
			end	
		end
	end
	
	# Deletando um registro
	def destroy
		@friend = Friend.find(params[:id])
		@friend.destroy

		respond_to do |format|
			format.html { redirect_to friends_url }
		end
	end
	
end	# Fim da classe