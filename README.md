# Projeto Mark7
# Projeto para desafio final

Setup do projeto
- Instalar Console Emulator (http://cmder.net/)
- Instalar o VS Code (https://code.visualstudio.com/) 
  Verificar se foi instalado- Executar no cmdr: "code"
- Instalar o Git for windows (https://git-scm.com/downloads)
- Rails Ruby (http://www.railsinstaller.org/pt-BR)
 .Verificar se foi instalado- Executar no cmdr: "ruby -v"; e também "rails -v"
(Obs.: Durante a instalação do rails pede o nome e email do git)

Intalando GEMs necessárias
- gem install bundle
- gem install cucumber (Verificar se foi instalado- Executar no cmdr: cucumber --version)

Extensões para instalar pelo VS code
- Ruby
- Cucumber (Gherkin) Full Support
- vscode-icons
- (Opcional) Atom one dark theme

Criado o projeto >>>
Coloque no arquivo Gemfile todas as gems que serão necessarias no projeto, o comanto "bundle install"  instala todas de um vez
Depois que criar o arquivo gemfiles, executar o comando abaixo para instalar as gems
*bundle install

Para criar a estrutura do cucumber executar o comando:
´´´cucumber --init´´´

o comando acima cria as pastas
create   features
  create   features/step_definitions
  create   features/support
  create   features/support/env.rb

  
  Depois disso o podemos desenvolver o projeto e  executar o comando "cucumber" para rodar os testes.
-----
Setup para colocar os testes no jenkins

- Instalar o Docker (https://store.docker.com/search?type=edition&offering=community).
(verifique a versão dodocker --version)

Depois que o docker estiver instalado, vamos instalar o Jenkins:
- Instalar o Jenkins (https://jenkins.io/doc/book/installing/)
Para instalar o jenkins basta colar os seguintes comandos no terminal
-----
docker run ^
  -u root ^
  --rm ^
  -d ^
  -p 8080:8080 ^
  -p 50000:50000 ^
  -v jenkins-data:/var/jenkins_home ^
  -v /var/run/docker.sock:/var/run/docker.sock ^
  jenkinsci/blueocean
-----

- docker ps (Lista as imagens do docker executando)
- docker rename 11111111 novo_nome

o jenkins vai estar disponivel na porta abaixo:
http://localhost:8080/

Porem é necesario a senha de admin acessando o container do jenkins

#Acessar o container (jenkins=nome do container)
docker exec -i -t jenkins sh

#Pegando a chave no arquivo comando "cat"
cat /var/jenkins_home/secrets/initialAdminPassword

Pegar a chave e colar no portal
http://localhost:8080/

- Instalar plugins sugeridos

Também é necesario um container com o selenium

#Criando novo container para a maquina dos testes com o selenium 
docker run -d -p 4444:4444 -p 59000:59000 selenium/standalone-chrome-debug







Comandos uteis docker:
- docker ps (Lista as imagens do docker executando)
- docker rename 11111111 novo_nome




Lembretes para pesquisar elemento no css
- quando for pesquisar por classe
$('.classe-name').text()

- quando for por id
$('#id_elemento_nome').text()

- quando form por placeholder
$('input[placeholder=Email]').



Comando
cucumber (rodar todos os testes)
cucumber -t @tag_name (rodar apenas os testes com a tag "tag_name")
cucumber --format html --out=log/reports.html (rodar os testes e gerar o arquivo reports html)
