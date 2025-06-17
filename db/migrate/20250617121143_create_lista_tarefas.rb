class CreateListaTarefas < ActiveRecord::Migration[8.0]
  def change
    create_table :lista_tarefas do |t|
      t.string :tarefas
      t.string :descrição
      t.date :entrega
      t.boolean :concluído

      t.timestamps
    end
  end
end
