class NovaTarefaPage
    include Capybara::DSL
  
      
    def cadastrar_tarefa(nome, data)
        find('#title').set nome
        find('#dueDate').set data       
    end
    
    def colocar_tag_na_tarefa(tags)
        within('div[class*=tagsinput]') do
            input_tag = find('input[type=text]')
            tags.each do |t|
                input_tag.set t[:tag]
                input_tag.send_keys :tab
                sleep 0.5
            end
        end
   
        click_button 'Cadastrar'
        #form-submit-button     id do botao cadastrar
    end

    def confirma_cadastro()
        click_button 'Cadastrar'
       #form-submit-button     id do botao cadastrar
   end
      
  
    def acessar
        visit '/tasks/insert'
    end

end