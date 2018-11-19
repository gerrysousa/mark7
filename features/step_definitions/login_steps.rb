Dado("que eu acessei o formulário de login") do
  @login_page.acessar
end
  
  Quando("faço login com {string} e {string}") do |string, string2|
    puts string
    puts string2
    # Quando('faço login com:') do |table|
      # @usuario = table.rows_hash
      @login_page.faz_login(string, string2)
    # end
  end
  
  Então("sou autenticado com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ver a mensagem de alerta {string}") do |string|
    #Então("devo ver a seguinte mensagem de {string}") do |mensagem_alerta|
      expect(@login_page.msg_alerta).to eql mensagem_alerta
    #end
  end


 
  
  
  