class ProdutosController < ApplicationController
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    @nome_a_buscar = params[:nome]
    if (@nome_a_buscar)
      @produtos = Produto.order(:nome).limit(50).where "nome like ?", "%#{@nome_a_buscar}%"
      respond_with(@produtos)
    else
      @produtos = Produto.order(:nome).limit(50)
      respond_with(@produtos)
    end
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.create(produto_params)
    respond_with @produto
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    @produto.update(produto_params)
    respond_with @produto
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy
    respond_with(nil, :location => produtos_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(:nome, :descricao, :quantidade, :preco)
    end
end
