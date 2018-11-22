
class TarefasPage
    include Capybara::DSL
  
      
    def alerta
        find('.alert-login')
    end

    def obter_status_tarefa(nome)
        find('table tbody tr', text: nome)
    end

    def add_tarefa
        find('#insert-button').click()
    end
    

    def msg_bem_vindo
        find('#task-board h3').text()
    end

end
