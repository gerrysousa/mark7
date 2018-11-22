Dado("que eu tenho uma tarefa com os seguintes atributos:") do |table|
  sleep 4
    # @nova_tarefa_page.acessar
    @tarefa = table.rows_hash
    # puts " tarefa"
    # puts @tarefa
   
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table|
    @tags= table.hashes
    # @nova_tarefa[:tags] = table.hashes [:tags] 
    # @nova_tarefa_page.colocar_tag_na_tarefa(@tags)
  end
  
  Dado("eu já cadastrei esta tarefa e não tinha percebido") do
    puts "entrado dentro do mas ja cadas"
    steps %{Quando faço o cadastro dessa tarefa}
    sleep 2
    puts "saindo dentro do mas ja cadas"
  end

  Dado("que eu tenho uma tarefa com o seguintes atributos:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end

  Quando("faço o cadastro dessa tarefa") do
    @tarefas_page.add_tarefa
    @nova_tarefa_page.cadastrar_tarefa(@tarefa[:nome], @tarefa[:data])  
    @nova_tarefa_page.colocar_tag_na_tarefa(@tags)  
    @nova_tarefa_page.confirma_cadastro()
  end
  
  Então("devo ver está tarefa com o status {string}") do |status_tarefa|
    resposta = @tarefas_page.obter_status_tarefa(@tarefa[:nome])
    expect(resposta).to have_content status_tarefa
  end
  
  Então("devo ver somente {int} tarefa com o nome cadastrado") do |quantidade|
  
  end  
  
  Então("devo ver a mensagem {string} ao tentar cadastrar") do |tarefa_duplicada|
    # expect(@page.tarefas.alerta).to eql msg_alerta
    puts('dentro do metodo - devo ver a mensagem ')
    # puts @nova_tarefa_page.alerta.text()
    expect(@nova_tarefa_page.alerta).to have_content tarefa_duplicada
  end
  
  