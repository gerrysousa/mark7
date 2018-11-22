

class Navbar
    include Capybara::DSL
  
    def menu_usuario
        find('.profile-address')
    end
  
    def sair
       menu_usuario.click
       click_link 'logout'
    end
end
  
  class SweetAlert
    include Capybara::DSL
  
    def mensagem
      find('#swal2-content')
    end
  
    def ok
      click_button 'OK'
    end
  end