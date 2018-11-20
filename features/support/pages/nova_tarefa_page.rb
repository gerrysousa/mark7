class NovaTarefaPage
    include Capybara::DSL
  
      
    def cadastrar_tarefa(nome, data)
        find('#title').set nome
        find('#dueDate').set data       
    end
    
    def colocar_tag_na_tarefa(tag)
         find('.input-div col-sm-9').set tag
        click_button 'Cadastrar'
        #form-submit-button     id do botao cadastrar
    end

    def confirma_cadastro()
        click_button 'Cadastrar'
       #form-submit-button     id do botao cadastrar
   end
      
  
    def acessar
        visit '/insert'
    end

end