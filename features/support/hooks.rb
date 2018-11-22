Before do
  @login_page = LoginPage.new
  @navbar = Navbar.new
  @tarefas_page = TarefasPage.new
  @nova_tarefa_page = NovaTarefaPage.new
  @dao = DAO.new

  page.current_window.resize_to(1440, 900)
end

Before('@login') do
  @login_page.acessar
  @login_page.faz_login('eu@papito.io','123456')
end

After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.tr(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot) # => capybara tira o screenshot
  embed(screenshot, 'image/png', 'Evidência') # => cucumber atacha a evidencia no relatório

  tem = page.has_selector?('.profile-address')

  puts tem
  if tem
    visit '/logout'
   sleep 3
  end  

end