Dado("que eu faça a requisição da API com um cep válido") do
    @cep_page = Cep.new
    @response = @cep_page.pesquisa_cep('04304090')
  end
  
  Então("a API deve retornar o cep pesquisado e o status code {int}") do |int|
    expect(@response.code).to eq(int)
    puts "CEP: #{@response['cep']}"
    puts "IBGE: #{@response['ibge']}"
    puts "CODE:  #{@response.code}"
  end