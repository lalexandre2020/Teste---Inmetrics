Dado(/^que eu acesse a opcao de cadastro$/) do
    visit 'http://www.juliodelima.com.br/taskit/task'
    click_button('signup')
end

Quando(/^preencher todos os campos corretamente$/) do
    fill_in('name', :with => "Luciano")
    fill_in('login', :with => "LucianoTeste1")
    fill_in('password', :with => "teste123")


    Quando(/^clicar no botao {ok}$/) do |ok|
        click_button('Save')
      end
      
      Entao(/^serei direcionado para a home do site$/) do
        assert_text('Amazing!')
  
end

end