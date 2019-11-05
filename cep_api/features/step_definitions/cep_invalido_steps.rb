  Dado("que eu faça a requisição da API com um cep inexistente") do
    @cep_page = Cep.new
    @response = @cep_page.pesquisa_cep('11111111')
  end
  
  Então("a API deve retornar mensagem de erro e o status code {int}") do |int|
    expect(@response.code).to eq(int)
    puts "ERRO: #{@response['erro']}"
    puts "CODE:  #{@response.code}"
  end

  Dado("que eu faça a requisição da API com um cep inválido") do
    @cep_page = Cep.new
    @response = @cep_page.pesquisa_cep('043')
  end
  
  Então("a API deve retornar status code {int}") do |int|
    expect(@response.code).to eq(int)
    puts "CODE:  #{@response.code}"
  end
  