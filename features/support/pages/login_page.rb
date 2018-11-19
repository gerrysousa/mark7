class LoginPage
    include Capybara::DSL
  
    def faz_login(email, senha)
      find('#login_email').set email
      find('#login_password').set senha
      click_button 'Login'
    end
  
    def msg_alerta
      within('form[id=login_form]') do
        return find('.alert').text
      end
    end
  end
  