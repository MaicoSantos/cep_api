# language: pt 
@cep
Funcionalidade: Pesquisa de ceps via API

@cep_valido
Cenario: Pesquisar CEP válido

Dado que eu faça a requisição da API com um cep válido
Então a API deve retornar o cep pesquisado e o status code 200

@cep_inexistente
Cenario: Pesquisar CEP inexistente

Dado que eu faça a requisição da API com um cep inexistente
Então a API deve retornar mensagem de erro e o status code 200

@cep_invalido
Cenario: Pesquisar CEP inválido

Dado que eu faça a requisição da API com um cep inválido
Então a API deve retornar status code 400