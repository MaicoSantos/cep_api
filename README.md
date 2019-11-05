# cep_api
Automação de API de CEP


Pare executar a automação basta baixar o projeto e no temrinar ir até a pasta do mesmo

primeiro execute o comando bundle install para aintalar todas as gems necesárias

após isso basta executar o comando cucumber para que o mesmo execute todos os testes de uma vez

caso queira executar cenários específicos pode-se usar as tags

cucumber -t @cep_valido
cucumber -t @cep_inexistente
cucumber -t @cep_invalido
