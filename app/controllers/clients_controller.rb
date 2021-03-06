class ClientsController < ApplicationController
  def index
    @clients = Client.all.order(:last_name)
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.user = current_user
    if @client.save
      redirect_to clients_path, primary: 'Client successfully added'
    else
      render :new
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to clients_path, primary: 'Client successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path, primary: 'Client successfully deleted.'
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :address)
  end
end
