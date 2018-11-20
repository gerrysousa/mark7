class LoginPage
    include Capybara::DSL
  
    def faz_login(email, senha)
      find('#login_email').set email
      find('#login_password').set senha
      click_button 'Login'
    end
  
    def alerta
        find('.alert-login').text()
      end

    def acessar
        visit '/login'
      end
  end
  