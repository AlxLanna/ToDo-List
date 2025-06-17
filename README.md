# 🚀 Lista de Tarefas!

Este é um aplicativo web simples de lista de tarefas, desenvolvido com **Ruby on Rails 8**. Ele te permite criar, visualizar, editar e excluir tarefas.
---


## 🛠️ Tecnologias Utilizadas

* **Ruby on Rails 8:** O framework web principal.
* **Ruby:** A linguagem de programação.
* **SQLite3:** O banco de dados padrão para desenvolvimento.

---

## ⚙️ Como Configurar e Rodar o Projeto

Siga estes passos simples para ter a aplicação funcionando na sua máquina local:

1.  **Clone o Repositório:**

    ```bash
    git clone [https://github.com/AlxLanna/ToDo-List.git](https://github.com/AlxLanna/ToDo-List.git)
    cd ToDo-List
    ```

2.  **Instale as Dependências Ruby:**

    ```bash
    bundle install
    ```

3.  **Instale as Dependências JavaScript/Node.js:**

    ```bash
    npm install #se você preferir npm
    ```

4.  **Configure o Banco de Dados:**

    ```bash
    rails db:migrate
    ```

5.  **Inicie o Servidor Rails:**

    ```bash
    rails s
    ```

6.  **Acesse a Aplicação:**
    Abra seu navegador e navegue para: `http://127.0.0.1:3000/`

---

## 🧭 Rotas Principais

* **`/`**: A **URL raiz que exibe a lista de todas as tarefas.**
* **`/lista_tarefas/:id`**: Mostra os detalhes de uma tarefa específica.
* **`/lista_tarefas/:id/edit`**: Exibe o formulário para editar uma tarefa existente.

---

