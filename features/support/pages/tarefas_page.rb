
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

    def btn_remover_tarefa(nome)        
        tr = obter_status_tarefa(nome)
        tr.find('#delete-button').click
    end

    def btn_alerta_confirmar
        within('.modal-content') do
          click_button 'Sim'
        end
    end
    
    def btn_alerta_cancelar
        within('.modal-content') do
            click_button 'Não, deixa queto.'
        end
    end

    def procura_tarefa(nome)
        sleep 2
        page.has_css?('table tbody tr', text: nome)
    end   

end
