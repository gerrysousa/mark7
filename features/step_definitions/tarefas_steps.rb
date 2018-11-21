Dado("que eu tenho uma tarefa com os seguintes atributos:") do |table|
  sleep 4
    @nova_tarefa_page.acessar
    @tarefa = table.rows_hash
    # puts " tarefa"
    # puts @tarefa
    @nova_tarefa_page.cadastrar_tarefa(@tarefa[:nome], @tarefa[:data])
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table|
    @tags= table.hashes
    # @nova_tarefa[:tags] = table.hashes [:tags] 
    @nova_tarefa_page.colocar_tag_na_tarefa(@tags)
  end
  
  Dado("eu já cadastrei esta tarefa e não tinha percebido") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  Dado("que eu tenho uma tarefa com o seguintes atributos:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end

  Quando("faço o cadastro dessa tarefa") do
    @nova_tarefa_page.confirma_cadastro
  end
  
  Então("devo ver está tarefa com o status {string}") do |string|
    resposta = @tarefas_page.obter_status_tarefa(@nova_tarefa[:nome])
    puts resposta
    # linha = @page.tarefas.obter_tr_por_nome(@nova_tarefa[:nome])
    expect(resposta).to have_content status_tarefa
  end
  
  Então("devo ver somente {int} tarefa com o nome cadastrado") do |int|
    pending # Write code here that turns the phrase above into concrete actions
  end  
  
  Então("devo ver a mensagem {string} ao tentar cadastrar") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  