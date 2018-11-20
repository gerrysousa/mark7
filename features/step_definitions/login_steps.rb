Dado("que eu acessei o formulário de login") do
  @login_page.acessar
end
  
  Quando("faço login com {string} e {string}") do |string, string2|
    @login_page.faz_login(string, string2)
  end
  
  Então("sou autenticado com sucesso") do
    expect(@tarefas_page.msg_bem_vindo)
  end
  
  Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |string|
    expect(@tarefas_page.msg_bem_vindo).to eql string
  end
  
  Então("devo ver a mensagem de alerta {string}") do |string|
    #Então("devo ver a seguinte mensagem de {string}") do |mensagem_alerta|
      expect(@login_page.alerta).to eql string
    #end
  end


 
  
  
  