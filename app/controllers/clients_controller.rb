class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name)
  end
end
