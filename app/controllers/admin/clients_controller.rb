class ClientsController < ApplicationController
  before_action :check_all_params_presence
  after_action :foo_after_action

  def check_all_params_presence
    puts "checking params before action $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 1"
    if 1==2
      return false
    end
  end

  def foo_after_action
    puts "checking params before action $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 2"
  end
  def index
     puts "calling function index"
    @allClient=Client.all.sort
  end

  def new
       puts "calling function new"
    @clientz=Client.new
  end

  def create
       puts "calling function create"
    @client= Client.create(client_params)
    if @client.save
      puts "hello world "
      # redirect_to "/clients/index"
      # redirect_to clients_path
      redirect_to root_path
      return
    end
  end


  # def client_params()
  #   client_par ={}
  #   client_par[:name] = params[:name]
  #   client_par[:age] = params[:age]
  #   client_par[:status] = params[:status]
  #   puts params[:new_client]

  #   return client_par

  # end

  def client_params
       puts "calling function client_params"
    params.require(:client).permit(:name, :age, :status)
  end

  def get
    puts "calling the get method %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    @name = params[:name]
    @id = params[:id]
    @age = params[:age]
    @last_client=Client.last
    flash[:error] = "the id in params is #{@id} and age = #{@age}"
    # render json: @last_client
    # respond_to do |format|
    #   format.html {  }
    #   format.xml {render xml: @last_client}
    #   format.json {render json: @last_client}
    # end
  end
end
