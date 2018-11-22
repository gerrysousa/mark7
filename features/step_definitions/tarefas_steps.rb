Dado("que eu tenho uma tarefa com os seguintes atributos:") do |table|
  sleep 3
    @tarefaAux = table.rows_hash
    @tarefa = { nome: @tarefaAux[:nome], data: @tarefaAux[:data], tags: [] }
    @dao.remover_tarefas(@tarefa[:nome])
    # puts " tarefa"
    # puts @tarefa @nova_tarefa[:tags] = table.hashes
   
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table|
    @tags= table.hashes
    puts @tags
    puts "nome todo dado"
    @tarefa = { nome: @tarefaAux[:nome], data: @tarefaAux[:data], tags: @tags }

  end
  
  Dado("eu já cadastrei esta tarefa e não tinha percebido") do
    puts "entrado dentro do mas ja cadas"
    steps %{Quando faço o cadastro dessa tarefa}
    sleep 2
    puts "saindo dentro do mas ja cadas"
  end

  Quando("faço o cadastro dessa tarefa") do
    @tarefas_page.add_tarefa
    @nova_tarefa_page.cadastrar_tarefa(@tarefa)  
    #@nova_tarefa_page.colocar_tag_na_tarefa(@tags)  
   # @nova_tarefa_page.confirma_cadastro()
  end
  
  Então("devo ver está tarefa com o status {string}") do |status_tarefa|
    resposta = @tarefas_page.obter_status_tarefa(@tarefa[:nome])
    expect(resposta).to have_content status_tarefa
  end
  
  Então("devo ver somente {int} tarefa com o nome cadastrado") do |quantidade|
    res =  @dao.busca_por_nome(@tarefa[:nome])
    expect(res.count).to eql quantidade
  end  
  
  Então("devo ver a mensagem {string} ao tentar cadastrar") do |tarefa_duplicada|
    puts('dentro do metodo - devo ver a mensagem ')
    # puts @nova_tarefa_page.alerta.text()
    expect(@nova_tarefa_page.alerta).to have_content tarefa_duplicada
  end
  
  Dado("que tenho uma tarefa indesejada") do |table|
    @tarefaAux = table.rows_hash
    @tarefa = { nome: @tarefaAux[:nome], data: @tarefaAux[:data], tags: [] }
    @dao.remover_tarefas(@tarefa[:nome])
    steps %{Quando faço o cadastro dessa tarefa}
  end
  
  Quando("eu solicito a exclusão desta tarefa") do
    @tarefas_page.btn_remover_tarefa(@tarefa[:nome])
  end
  
  Quando("confirmo a ação de exclusão") do
    @tarefas_page.btn_alerta_confirmar
  end
  
  Então("esta tarefa não deve ser exibida na lista") do
    achou = @tarefas_page.procura_tarefa(@tarefa[:nome])
    expect(achou).to be false
  end
  
  Quando("eu cancelo esta ação") do
    @tarefas_page.btn_alerta_cancelar
  end
  
  Então("esta tarefa permanece na lista") do
    achou = @tarefas_page.procura_tarefa(@tarefa[:nome])
    expect(achou).to be true
  end