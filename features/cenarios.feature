#language: pt

Funcionalidade: Pesquisa
  Sendo um desenvolvedor a procura de trabalho
  Quero fazer uma pesquisa no site da Coodesh
  Para que eu possa me candidatar a uma vaga de emprego

  Cenario: Acesso a homepage

    Dado que acesso a homepage da Coodesh
    Então a homepage é carregada corretamente
  
  Cenario: Acesso a página de vagas

    Dado que acesso a homepage da Coodesh
    Quando clico no menu Ver Vagas no menu superior
    Então sou redirecionado para a página de vagas

  Cenario: Buscar uma vaga

    Dado que acesso a página de vagas da Coodesh
    Quando faço uma busca por uma empresa na barra de pesquisa
    Então o sistema retorna uma ou mais empresas de acordo com o termo pesquisado

  Cenario: Abrir detalhes da vaga

    Dado que acesso a página de vagas da Coodesh
    Quando clico na vaga
    Então os detalhes da vaga são abertos

  Cenario: Fazer candidatura

    Dado que acesso a página de detalhe da vaga
    Quando clico no botão candidatar
    Então é aberto um modal com o formulário de cadastro