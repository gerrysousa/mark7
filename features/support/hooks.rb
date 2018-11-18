Before do
  @login_page = LoginPage.new
  @navbar = Navbar.new
  @tarefas_page = TarefasPage.new

  page.current_window.resize_to(1440, 900)
end

After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.tr(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot) # => capybara tira o screenshot
  embed(screenshot, 'image/png', 'Evidência') # => cucumber atacha a evidencia no relatório
end
