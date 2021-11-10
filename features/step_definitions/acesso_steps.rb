Dado('que acesso a homepage da Coodesh') do                                     
  visit 'https://beta.coodesh.com/'
end                                                                           

Então('a homepage é carregada corretamente') do                               
  expect(page).to have_content('Atinja suas metas de contratações e monte squads mais eficientes')
end

Quando('clico no menu Ver Vagas no menu superior') do
  find_link('Ver Vagas', href: '/vagas').click
  sleep 10
end

Então('sou redirecionado para a página de vagas') do
  expect(page).to have_selector('small', text: 'Cargo, habilidades ou startup')
end

Dado('que acesso a página de vagas da Coodesh') do
  visit 'https://beta.coodesh.com/vagas'
end

Quando('faço uma busca por uma empresa na barra de pesquisa') do                   
  find('[name="search"]').set 'PiedPiper'
  click_button 'Encontrar'
end                                                                                
                                                                                   
Então('o sistema retorna uma ou mais empresas de acordo com o termo pesquisado') do
  expect(page).to have_selector('span', text: 'PiedPiper')
end                                                                                

Quando('clico na vaga') do
  first('a.card').click
end

Então('os detalhes da vaga são abertos') do
  expect(page).to have_selector('h3', text: 'Resumo da Vaga')
end

Dado('que acesso a página de detalhe da vaga') do                             
  visit 'https://beta.coodesh.com/vagas/teste01-182538182'
end                                                                           
                                                                              
Quando('clico no botão candidatar') do                                        
  first('button', text: 'Candidatar-se').click 
end                                                                           
                                                                              
Então('é aberto um modal com o formulário de cadastro') do                    
  expect(page).to have_selector('body.modal-open')
end                                                                           