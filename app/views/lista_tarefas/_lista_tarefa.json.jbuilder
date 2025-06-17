json.extract! lista_tarefa, :id, :tarefas, :descrição, :entrega, :concluído, :created_at, :updated_at
json.url lista_tarefa_url(lista_tarefa, format: :json)
