class ListaTarefasController < ApplicationController
  before_action :set_lista_tarefa, only: %i[ show edit update destroy ]

  # GET /lista_tarefas or /lista_tarefas.json
  def index
    @lista_tarefas = ListaTarefa.all
  end

  # GET /lista_tarefas/1 or /lista_tarefas/1.json
  def show
  end

  # GET /lista_tarefas/new
  def new
    @lista_tarefa = ListaTarefa.new
  end

  # GET /lista_tarefas/1/edit
  def edit
  end

  # POST /lista_tarefas or /lista_tarefas.json
  def create
    @lista_tarefa = ListaTarefa.new(lista_tarefa_params)

    respond_to do |format|
      if @lista_tarefa.save
        format.html { redirect_to @lista_tarefa, notice: "Tarefa criada com sucesso" }
        format.json { render :show, status: :created, location: @lista_tarefa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lista_tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_tarefas/1 or /lista_tarefas/1.json
  def update
    respond_to do |format|
      if @lista_tarefa.update(lista_tarefa_params)
        format.html { redirect_to @lista_tarefa, notice: "Tarefa atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @lista_tarefa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lista_tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_tarefas/1 or /lista_tarefas/1.json
  def destroy
    @lista_tarefa.destroy!

    respond_to do |format|
      format.html { redirect_to lista_tarefas_path, status: :see_other, notice: "Tarefa excluída com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_tarefa
      @lista_tarefa = ListaTarefa.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def lista_tarefa_params
      params.expect(lista_tarefa: [ :tarefas, :descrição, :entrega, :concluído ])
    end
end
