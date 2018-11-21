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


-----
Lembretes para pesquisar elemento no css
- quando for pesquisar por classe
$('.classe-name').text()

- quando for por id
$('#id_elemento_nome').text()

- quando form por placeholder
$('input[placeholder=Email]').
