
class TarefasPage
    include Capybara::DSL
  
      
    def alerta
        find('.alert-login')
    end

    def msg_bem_vindo
        find('#task-board h3').text()
    end

end
